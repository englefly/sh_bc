select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number) + count(ss_sold_date_sk) + count(ss_sold_time_sk)
           + count(ss_cdemo_sk) + count(ss_hdemo_sk) + count(ss_addr_sk) + count(ss_store_sk)
    from (
        select ss_customer_sk, c_customer_sk, ss_ticket_number, ss_sold_date_sk, ss_sold_time_sk,
               ss_cdemo_sk, ss_hdemo_sk, ss_addr_sk, ss_store_sk
        from 
            (select * from store_sales where ss_ticket_number % 100 < {left}) A 
            join [{join_type}]
            (select * from customer where c_customer_sk % 12 < {right} ) B
            on ss_customer_sk = c_customer_sk
        ) T;