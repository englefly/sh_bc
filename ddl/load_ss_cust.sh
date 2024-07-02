# echo "load cust 1"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_cust_1.sql
# echo "load cust 3"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_cust_3.sql
# echo "load cust 6"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_cust_6.sql
# echo "load cust 9"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_cust_9.sql
# echo "load ss 1"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_1.sql
# echo "load ss 5"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_5.sql
# echo "load ss 10"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_10.sql
# echo "load ss 20"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_20.sql
# echo "load ss 40"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_40.sql
echo "load ss 60"
mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_60.sql
# echo "load ss 80"
# mysql -h:: -uroot -P9030 -D tpcds_1000g < load_ss_80.sql
