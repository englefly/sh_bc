
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
