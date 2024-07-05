#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import pandas as pd
import os
import glob

    
def batch(batch_name, output):
    try:
        expect = pd.read_csv(f"../3be/{batch_name}_processed.csv")
        # for i in range(21):
        #     print(f"{i}: {expect.iloc[0, i]}")
        fact = pd.read_csv(f"shuffle_type/3be/{batch_name}.csv")
        print(f"left, right , expect, fact, score", file = output)
        pos = 0
        sum = 0
        for right in [1, 3, 6, 9, 12]:
            for left in [1, 5, 10, 20, 40, 60, 80, 100]:
                diff = float(expect.iloc[pos, 20]) #shuffle - broadcast
                type = fact.iloc[pos, 2] 
                score = 0
                if diff > 0:
                    if type == 'shuffle':
                        score = diff
                    else:
                        score = 0 - diff
                else:
                    if type == 'shuffle':
                        score = 0 - diff
                    else:
                        score = diff

                print(f"{left}, {right}, {diff}, {fact.iloc[pos, 2]}, {score}", file=output)
                output.flush()
                pos = pos + 1
    finally:
        pass


if __name__ == "__main__":
    work_dir = os.path.dirname(__file__)
    print(work_dir)
    batches = ["16v1", "1v16", "12v1", "1v12", "8v1", "1v8",  "4v1", "1v4", "2v1",  "1v2" , "1v1"]
    # batches = ["1v1"]
    for batch_name in batches:
        result_file_path = os.path.join(work_dir, "result/3be", batch_name + ".csv")
        with open(result_file_path, 'w') as output:
            batch(batch_name, output)

