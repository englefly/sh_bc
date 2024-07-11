如何选择 broadcast join 还是 shuffle join，优化器有一系列参数和公式，为了调试这些参数和公式，我们将
1. 按照数据量级生成两组table
2. 在这两组table上构造一些列join，测试broadcast和shuffle join的性能
因此该实验分为三个阶段，
1. 在服务器端测试join的实际性能， 输出 expect 文件
2. 在本地通过注入统计信息，从explain shape 中提取bc和shuffle信息，生成 shuffle_type
3. 验证阶段，对比 shuffle_type 和expect 文件，对每个shape plan 打分

# 生成测试数据 （需要导入1T数据的服务器）
## 导入tpcds 1t，执行 ddl/create_cust.sql, ddl/create_ss.sql 生成测试table
## 执行 ddl/load_ss_cust.sh 将 ss 与 cust中的数据分布导入到 测试table中
## 执行ss_join_c.py 生成 1v1.csv ... 16v1.csv

# 生成标准结果
下面对 1v1.csv 的操作都需要应用在1v1.csv ... 16v1.csv 等文件上
## process_csv.py
将 1v1.csv 转化为 1v1_processed.csv， 即，将 bc和sh 相同量级的join结果写到同一行，并计算两种join的时间差
生成文件在 processed/*be

# 验证阶段 （可本地执行）
## eval/prepare/create_tables.sql
创建测试使用的空表
## eval/prepare/ss_c.stats
注入统计信息
## eval/run_shape.py
在验证环境中跑explain shape，提取join shuffle，结果生成到eval/shuffle_type/*be/ 目录
## eval/eval.py
对比eval/shuffle_type/*be/ 和 processed 文件，结果生成到result/*be/1v1.csv。如果shuffle type选择正确，那么得分，否则扣分，分数为broadcast join和shuffle join的时间差