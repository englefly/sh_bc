#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import pandas as pd
import os
import glob
import sys

    
def batch(batch_name, processed_dir, fact_dir, output):
    try:
        expect = pd.read_csv(f"{processed_dir}/{batch_name}_processed.csv")
        # for i in range(21):
        #     print(f"{i}: {expect.iloc[0, i]}")
        fact = pd.read_csv(f"{fact_dir}/{batch_name}.csv")
        print(f"left, right , shuffle, broadcast, sh-bc, fact, good, bad", file = output)
        pos = 0
        bad_sum = 0
        good_sum = 0
        for right in [1, 3, 6, 9, 12]:
            for left in [1, 5, 10, 20, 40, 60, 80, 100]:
                diff = float(expect.iloc[pos, 20]) #shuffle - broadcast
                type = fact.iloc[pos, 2] 
                good = 0
                bad = 0
                if diff > 0:
                    if type == 'shuffle':
                        bad = diff
                        bad_sum = bad_sum + diff
                    else:
                        good = abs(diff)
                        good_sum = good_sum + good
                else:
                    if type == 'shuffle':
                        bad = abs(diff)
                        bad_sum = bad_sum + bad
                    else:
                        good = abs(diff)
                        good_sum = good + good_sum

                print(f"{left}, {right}, {expect.iloc[pos,6]}, {expect.iloc[pos,16]}, {diff}, {fact.iloc[pos, 2]}, {good}, {bad}", file=output)
                output.flush()
                pos = pos + 1
    finally:
        return (good_sum, bad_sum)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("""
        USAGE: ./eval.py processed_dir result_dir\n
        ./eval.py ../processed/6be shuffle_type/6be result/6be
        ./eval.py ../processed/3be shuffle_type/3be result/3be
        """)
        sys.exit(1)
    processed_dir = sys.argv[1]
    fact_dir = sys.argv[2]
    result_dir = sys.argv[3]

    if not os.path.exists(result_dir):
        os.makedirs(result_dir)
    else:
        print(f"{result_dir} is already exists, exit ...")
        sys.exit(1)

    batches = ["16v1", "1v16", "12v1", "1v12", "8v1", "1v8",  "4v1", "1v4", "2v1",  "1v2" , "1v1"]
    good_sum = 0
    bad_sum = 0
    for batch_name in batches:
        result_file_path = os.path.join(result_dir, "result_"+batch_name + ".csv")
        with open(result_file_path, 'w') as output:
            (g, b) = batch(batch_name, processed_dir, fact_dir, output)
            print(f"{batch_name}: good={g:.2f}, bad={b:.2f}")
            good_sum = good_sum + g
            bad_sum = bad_sum + b
    print(f"good_sum={good_sum:.2f}, bad_sum={bad_sum:.2f}")

