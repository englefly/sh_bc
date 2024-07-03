CREATE TABLE customer (
  `c_customer_sk` BIGINT NOT NULL,
  `c_customer_id` CHAR(16) NOT NULL,
  `c_current_cdemo_sk` BIGINT NULL,
  `c_current_addr_sk` BIGINT NULL,
  `c_first_shipto_date_sk` BIGINT NULL,
  `c_first_sales_date_sk` BIGINT NULL,
  `c_salutation` CHAR(10) NULL,
  `c_last_name` CHAR(30) NULL,
  `c_preferred_cust_flag` CHAR(1) NULL,
  `c_birth_day` INT NULL,
  `c_birth_month` INT NULL,
  `c_birth_year` INT NULL,
  `c_birth_country` VARCHAR(20) NULL,
  `c_login` CHAR(13) NULL,
  `c_email_address` CHAR(50) NULL,
  `c_last_review_date_sk` BIGINT NULL
) ENGINE=OLAP
DUPLICATE KEY(`c_customer_sk`)
DISTRIBUTED BY HASH(`c_customer_id`) BUCKETS 24
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);
CREATE TABLE customer1 (
  `c_customer_sk` BIGINT NOT NULL,
  `c_customer_id` CHAR(16) NOT NULL,
  `c_current_cdemo_sk` BIGINT NULL,
  `c_current_addr_sk` BIGINT NULL,
  `c_first_shipto_date_sk` BIGINT NULL,
  `c_first_sales_date_sk` BIGINT NULL,
  `c_salutation` CHAR(10) NULL,
  `c_last_name` CHAR(30) NULL,
  `c_preferred_cust_flag` CHAR(1) NULL,
  `c_birth_day` INT NULL,
  `c_birth_month` INT NULL,
  `c_birth_year` INT NULL,
  `c_birth_country` VARCHAR(20) NULL,
  `c_login` CHAR(13) NULL,
  `c_email_address` CHAR(50) NULL,
  `c_last_review_date_sk` BIGINT NULL
) ENGINE=OLAP
DUPLICATE KEY(`c_customer_sk`)
DISTRIBUTED BY HASH(`c_customer_id`) BUCKETS 24
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE customer3 (
  `c_customer_sk` BIGINT NOT NULL,
  `c_customer_id` CHAR(16) NOT NULL,
  `c_current_cdemo_sk` BIGINT NULL,
  `c_current_addr_sk` BIGINT NULL,
  `c_first_shipto_date_sk` BIGINT NULL,
  `c_first_sales_date_sk` BIGINT NULL,
  `c_salutation` CHAR(10) NULL,
  `c_last_name` CHAR(30) NULL,
  `c_preferred_cust_flag` CHAR(1) NULL,
  `c_birth_day` INT NULL,
  `c_birth_month` INT NULL,
  `c_birth_year` INT NULL,
  `c_birth_country` VARCHAR(20) NULL,
  `c_login` CHAR(13) NULL,
  `c_email_address` CHAR(50) NULL,
  `c_last_review_date_sk` BIGINT NULL
) ENGINE=OLAP
DUPLICATE KEY(`c_customer_sk`)
DISTRIBUTED BY HASH(`c_customer_id`) BUCKETS 24
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);


CREATE TABLE customer6 (
  `c_customer_sk` BIGINT NOT NULL,
  `c_customer_id` CHAR(16) NOT NULL,
  `c_current_cdemo_sk` BIGINT NULL,
  `c_current_addr_sk` BIGINT NULL,
  `c_first_shipto_date_sk` BIGINT NULL,
  `c_first_sales_date_sk` BIGINT NULL,
  `c_salutation` CHAR(10) NULL,
  `c_last_name` CHAR(30) NULL,
  `c_preferred_cust_flag` CHAR(1) NULL,
  `c_birth_day` INT NULL,
  `c_birth_month` INT NULL,
  `c_birth_year` INT NULL,
  `c_birth_country` VARCHAR(20) NULL,
  `c_login` CHAR(13) NULL,
  `c_email_address` CHAR(50) NULL,
  `c_last_review_date_sk` BIGINT NULL
) ENGINE=OLAP
DUPLICATE KEY(`c_customer_sk`)
DISTRIBUTED BY HASH(`c_customer_id`) BUCKETS 24
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE customer9 (
  `c_customer_sk` BIGINT NOT NULL,
  `c_customer_id` CHAR(16) NOT NULL,
  `c_current_cdemo_sk` BIGINT NULL,
  `c_current_addr_sk` BIGINT NULL,
  `c_first_shipto_date_sk` BIGINT NULL,
  `c_first_sales_date_sk` BIGINT NULL,
  `c_salutation` CHAR(10) NULL,
  `c_last_name` CHAR(30) NULL,
  `c_preferred_cust_flag` CHAR(1) NULL,
  `c_birth_day` INT NULL,
  `c_birth_month` INT NULL,
  `c_birth_year` INT NULL,
  `c_birth_country` VARCHAR(20) NULL,
  `c_login` CHAR(13) NULL,
  `c_email_address` CHAR(50) NULL,
  `c_last_review_date_sk` BIGINT NULL
) ENGINE=OLAP
DUPLICATE KEY(`c_customer_sk`)
DISTRIBUTED BY HASH(`c_customer_id`) BUCKETS 24
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);


CREATE TABLE store_sales (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE store_sales1 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE store_sales5 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE store_sales10 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE store_sales20 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE store_sales40 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);

CREATE TABLE store_sales60 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);


CREATE TABLE store_sales80 (
  `ss_item_sk` BIGINT NOT NULL,
  `ss_ticket_number` BIGINT NOT NULL,
  `ss_customer_sk` BIGINT NULL,
  `ss_sold_date_sk` BIGINT NULL,
  `ss_sold_time_sk` BIGINT NULL,
  `ss_cdemo_sk` BIGINT NULL,
  `ss_hdemo_sk` BIGINT NULL,
  `ss_addr_sk` BIGINT NULL,
  `ss_store_sk` BIGINT NULL,
  `ss_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_list_price` DECIMAL(7, 2) NULL,
  `ss_ext_tax` DECIMAL(7, 2) NULL,
  `ss_ext_wholesale_cost` DECIMAL(7, 2) NULL,
  `ss_ext_discount_amt` DECIMAL(7, 2) NULL,
  `ss_ext_sales_price` DECIMAL(7, 2) NULL,
  `ss_sales_price` DECIMAL(7, 2) NULL,
  `ss_ext_list_price` DECIMAL(7, 2) NULL
) ENGINE=OLAP
DUPLICATE KEY(`ss_item_sk`, `ss_ticket_number`)
DISTRIBUTED BY HASH(`ss_item_sk`, `ss_ticket_number`) BUCKETS 32
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"min_load_replica_num" = "-1",
"is_being_synced" = "false",
"colocate_with" = "store",
"storage_medium" = "hdd",
"storage_format" = "V2",
"inverted_index_storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false",
"enable_single_replica_compaction" = "false",
"group_commit_interval_ms" = "10000",
"group_commit_data_bytes" = "134217728"
);


 