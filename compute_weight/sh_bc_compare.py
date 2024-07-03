import pandas as pd
import os

file_path = 'data.xlsx'

sheets = ["16v1", "1v16", "12v1", "1v12", "8v1", "1v8",  "4v1", "1v4", "2v1",  "1v2" , "1v1"]

for sheet in sheets:
    with open(sheet, 'w') as f:
        df = pd.read_excel(file_path, sheet_name = sheet, engine='openpyxl')
        t_column_data = df.iloc[0:41, 19].tolist()
        for num in t_column_data:
            f.write(f"{num}\n")
