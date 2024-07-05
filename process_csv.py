#!/usr/bin/env python3
import pandas as pd
import sys

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("USAGE: ./process_csv.py input.csv output.csv")
        sys.exit(1)

    # 读取 CSV 文件
    file_path = sys.argv[1]
    output_file_path = sys.argv[2]
    if file_path == output_file_path:
        print(f"input file and output file should not be different")
        sys.exit(1)
    df = pd.read_csv(file_path)

    # # 选择第 42 行到第 82 行的 A-G 列的数据
    data_to_move = df.iloc[41:82, 0:7]

    columns = ['shuffle', 'sl', 'sr', 's1','s2','s3','s4','savg', 'x5', 'x6', 'x7', 'broadcast', 'bl', 'br', 'b1','b2','b3','b4','bavg']
    # 确保目标位置的列数足够
    if df.shape[1] < 17:
        # 如果列数不够，添加空列
        for i in range(17 - df.shape[1]):
            if i == 9:
                df['brAvg'] = pd.NA
            elif i == 3:
                df['broadcast'] = pd.NA
            else:
                df[i] = pd.NA


    # 将数据移动到第 1 行到第 41 行的 K-Q 列
    df.iloc[0:40, 10:17] = data_to_move.values

    df['R']=pd.NA
    df['S']=pd.NA
    df['sh/bc'] = pd.NA
    df['sh-bc'] = pd.NA
    for i in range(40):
        df.iloc[i,19] = f"{float(df.iloc[i, 6]) / float(df.iloc[i, 16]):.2f}"
        df.iloc[i,20] = f"{float(df.iloc[i, 6]) - float(df.iloc[i, 16]):.2f}"

    df.to_csv(output_file_path, index=False)

    print("Data has been moved and saved to", output_file_path)
