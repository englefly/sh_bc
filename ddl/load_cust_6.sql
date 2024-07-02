insert into customer6 (
    c_customer_sk, c_customer_id, c_current_cdemo_sk, c_current_addr_sk, 
    c_salutation, c_first_sales_date_sk, c_first_shipto_date_sk, c_last_name,
    c_preferred_cust_flag, c_birth_day, c_birth_month, c_birth_year,
    c_birth_country, c_login, c_email_address, c_last_review_date_sk
)
(
    select c_customer_sk, c_customer_id, c_current_cdemo_sk, c_current_addr_sk, 
                c_salutation, c_first_sales_date_sk, c_first_shipto_date_sk, c_last_name,
                c_preferred_cust_flag, c_birth_day, c_birth_month, c_birth_year,
                c_birth_country, c_login, c_email_address, c_last_review_date_sk
    from customer
    where c_customer_sk % 12 < 6
);