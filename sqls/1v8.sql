select count(ss_customer_sk) + count(c_customer_sk) + count(c_current_cdemo_sk) + count(c_current_addr_sk) + count(c_salutation) + count(c_first_sales_date_sk) + count(c_first_shipto_date_sk) + count(c_last_name)
    from (
        select ss_customer_sk, c_customer_sk, c_current_cdemo_sk, c_current_addr_sk, c_salutation, c_first_sales_date_sk, c_first_shipto_date_sk, c_last_name
        from 
            (select * from store_sales where ss_ticket_number % 100 < {left}) A 
            join [{join_type}]
            (select * from customer where c_customer_sk % 12 < {right} ) B
            on ss_customer_sk = c_customer_sk
        ) T;