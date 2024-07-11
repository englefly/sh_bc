#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import subprocess
import time
import os
import glob
import sys


def sql(query):
    command = "mysql -h:: -uroot -P9030 -D bc_shuffle_compare_db -e '{q}'".format(q = query)
    return subprocess.run(command, shell=True, capture_output=True, text=True)

def shuffle_type(res):
    if "shuffle" in res:
        return "shuffle"
    if "broadcast" in res:
        return "broadcast"
    return "error"
    
def batch(template, output):
    try:
        print(f"left, right , shuffle_type", file = output)
        for right in [1, 3, 6, 9, 12]:
            for left in [1, 5, 10, 20, 40, 60, 80, 100]:
                print(f"{left}, {right} ", end = ",", file=output)
                query = "explain shape plan " + template.format(left = left, right = right)
                res = sql(query)
                print(res.stdout)
                print(shuffle_type(res.stdout), file=output)
                output.flush()

    finally:
        pass


if __name__ == "__main__":
    work_dir = os.path.dirname(__file__)
    print(work_dir)
    sql("set global disable_nereids_rules='ELIMINATE_JOIN_BY_FK, PRUNE_EMPTY_PARTITION';")
    templates=dict()
    templates['1v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v2'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v4'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)+count(c_salutation)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v8'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)
            + count(c_salutation) + count(c_first_sales_date_sk) + count(c_first_shipto_date_sk) + count(c_last_name)
            + count(c_customer_id)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v12'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)
            + count(c_salutation) + count(c_first_sales_date_sk) + count(c_first_shipto_date_sk) + count(c_last_name)
            + count(c_preferred_cust_flag) + count(c_birth_day) + count(c_birth_month) + count(c_birth_year)         
            + count(c_customer_id)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v16'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)
                + count(c_salutation) + count(c_first_sales_date_sk) + count(c_first_shipto_date_sk) + count(c_last_name)
                + count(c_preferred_cust_flag) + count(c_birth_day) + count(c_birth_month) + count(c_birth_year) 
                + count(c_birth_country) + count(c_login) + count(c_email_address) + count(c_last_review_date_sk)
                + count(c_customer_id)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """


    templates['2v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['4v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['8v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
                + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['12v1'] = """
            select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
                    + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
                    + count(ss_list_price) + count(ss_wholesale_cost) + count(ss_sales_price) + count(ss_ext_discount_amt)        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['16v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
                + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
                + count(ss_list_price) + count(ss_wholesale_cost) + count(ss_sales_price) + count(ss_ext_discount_amt)
                + count(ss_ext_sales_price) + count(ss_ext_wholesale_cost) + count(ss_ext_list_price) + count(ss_ext_tax)
        from 
            store_sales{left} 
            join customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    batches = ["16v1", "1v16", "12v1", "1v12", "8v1", "1v8",  "4v1", "1v4", "2v1",  "1v2" , "1v1"]

    shape_3be = "shuffle_type/3be"
    if not os.path.exists(shape_3be):
        os.makedirs(shape_3be)
    else:
        print(f"{shape_3be} is already exists, exit ...")
        sys.exit(1)
    sql("set global be_number_for_test = 3;")
    for batch_name in batches:
        result_file_path = os.path.join(work_dir, shape_3be, batch_name + ".csv")
        sql_template = templates[batch_name]
        with open(result_file_path, 'w') as output:
            batch(sql_template, output)

    shape_6be = "shuffle_type/6be"
    if not os.path.exists(shape_6be):
        os.makedirs(shape_6be)
    else:
        print(f"{shape_6be} is already exists, exit ...")
        sys.exit(1)

    sql("set global be_number_for_test = 6;")
    for batch_name in batches:
        result_file_path = os.path.join(work_dir, "shuffle_type/6be", batch_name + ".csv")
        sql_template = templates[batch_name]
        with open(result_file_path, 'w') as output:
            batch(sql_template, output)