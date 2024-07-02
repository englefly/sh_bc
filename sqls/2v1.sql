select count(ss_customer_sk) + count(c_customer_sk) + count(ss_ticket_number)
    from (
        select ss_customer_sk, c_customer_sk, ss_ticket_number
        from 
            (select * from store_sales where ss_ticket_number % 100 < {left}) A 
            join [{join_type}]
            (select * from customer where c_customer_sk % 12 < {right} ) B
            on ss_customer_sk = c_customer_sk
        ) T;