#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import subprocess
import time
import os
import glob

def execute_command(command):
    start_time = time.time()
    result = subprocess.run(command, shell=True, capture_output=True, text=True)
    # result = command
    print(result)
    end_time = time.time()
    return end_time - start_time

def sql(query):
    command = "mysql -h:: -uroot -P9030 -D tpcds_1000g -e '{q}'".format(q = query)
    return execute_command(command)

def batch(join_type, template, output):
    try:
        print(f"{join_type}, , , , , , avg", file = output)
        for right in [1, 3, 6, 9, 12]:
            for left in [1, 5, 10, 20, 40, 60, 80, 100]:
                print(f"{left}, {right} ", end = ",", file=output)
                print(f"{left}, {right} ")
                query = template.format(join_type = join_type, left = ("" if left == 100 else left), right = ("" if right == 12 else right))
                sum = 0.0
                for i in range(4):
                    exec_time = sql(query)
                    print(f"{exec_time:.2f}", end = ",", file=output)
                    output.flush()
                    if i > 0:
                        sum += exec_time
                print(f"{sum/3:.2f}", file=output)
                output.flush()
    finally:
        pass

def read_file_to_string(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        file_content = file.read()
    return file_content

if __name__ == "__main__":
    work_dir = os.path.dirname(__file__)
    print(work_dir)
    sql("set global disable_nereids_rules='ELIMINATE_JOIN_BY_FK';")
    sql("set global runtime_filter_mode=off;")
    sql("set global enable_auto_analyze=false;")

    templates=dict()
    templates['1v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v2'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v4'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)+count(c_salutation)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v8'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)
            + count(c_salutation) + count(c_first_sales_date_sk) + count(c_first_shipto_date_sk) + count(c_last_name)
            + count(c_customer_id)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['1v12'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk)
            + count(c_salutation) + count(c_first_sales_date_sk) + count(c_first_shipto_date_sk) + count(c_last_name)
            + count(c_preferred_cust_flag) + count(c_birth_day) + count(c_birth_month) + count(c_birth_year)         
            + count(c_customer_id)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
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
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """


    templates['2v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['4v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['8v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
                + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['12v1'] = """
            select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
                    + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
                    + count(ss_list_price) + count(ss_wholesale_cost) + count(ss_sales_price) + count(ss_ext_discount_amt)        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """

    templates['16v1'] = """
        select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
                + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
                + count(ss_list_price) + count(ss_wholesale_cost) + count(ss_sales_price) + count(ss_ext_discount_amt)
                + count(ss_ext_sales_price) + count(ss_ext_wholesale_cost) + count(ss_ext_list_price) + count(ss_ext_tax)
        from 
            store_sales{left} 
            join  [{join_type}] customer{right}
            on ss_customer_sk = c_customer_sk;
    """
    batches = ["16v1", "1v16", "12v1", "1v12", "8v1", "1v8",  "4v1", "1v4", "2v1",  "1v2" , "1v1"]
    for batch_name in batches:
        result_file_path = os.path.join(work_dir, batch_name + ".csv")
        sql_template = templates[batch_name]
        with open(result_file_path, 'w') as output:
            join_type="shuffle"
            batch(join_type, sql_template, output)
            join_type="broadcast"
            batch(join_type, sql_template, output)
