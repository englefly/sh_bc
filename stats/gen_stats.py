#!/usr/bin/env python3
import subprocess
import os
import sys

host = "127.0.0.1"
query_port = "9030"
user = "root"
db = "tpcds_1000g"

def sql(query):
    command = f"mysql -h{host} -u{user} -P{query_port} -D {db} -e '{query}'"
    try:
        return subprocess.run(command, shell=True, capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print("Command failed with error")
        print("Return Code:", e.returncode)
        print("Standard Output:", e.stdout)
        raise

def gen_table_stats(table):
    res = sql (f"show column stats {table}")
    data = res.stdout.split("\n")[1:-1]
    alter_sql_template = "alter table {table} modify column {col} set stats ('row_count'='{row_count}', 'ndv'='{ndv}', 'min_value'='{min_value}', 'max_value'='{max_value}', 'avg_size'='{avg_size}', 'max_size'='{max_size}', 'num_nulls'='{num_null}' );"
    with open(table+".stats", 'w') as f:
        for row in data:
            row = row.split("\t")
            alter_sql = alter_sql_template.format(table = table,
                col = row[0],
                row_count = row[2],
                ndv = row[3],
                num_null = row[4],
                max_size = row[5],
                avg_size = row[6],
                min_value= row[7].strip("'"),
                max_value = row[8].strip("'")
                )
            f.write(alter_sql)
            f.write(os.linesep)
        
if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 gen_stats.py [table_name]")
        exit
    table = sys.argv[1]
    print(table)
    gen_table_stats(table)