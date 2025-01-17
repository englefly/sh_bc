
insert into store_sales10 (ss_item_sk, ss_customer_sk, ss_ticket_number, ss_sold_date_sk, ss_sold_time_sk,
        ss_cdemo_sk, ss_hdemo_sk, ss_addr_sk, ss_store_sk,
        ss_list_price, ss_wholesale_cost, ss_sales_price, ss_ext_discount_amt,
        ss_ext_sales_price, ss_ext_wholesale_cost, ss_ext_list_price, ss_ext_tax)
(
    select ss_item_sk, ss_customer_sk, ss_ticket_number, ss_sold_date_sk, ss_sold_time_sk,
            ss_cdemo_sk, ss_hdemo_sk, ss_addr_sk, ss_store_sk,
            ss_list_price, ss_wholesale_cost, ss_sales_price, ss_ext_discount_amt,
            ss_ext_sales_price, ss_ext_wholesale_cost, ss_ext_list_price, ss_ext_tax
    from store_sales where ss_ticket_number % 100 < 10
);