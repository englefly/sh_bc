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


 