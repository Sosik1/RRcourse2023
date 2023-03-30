import pandas as pd

def import_excel_data(file_path, sheet_names):
    result = []

    for index, sheet_name in enumerate(sheet_names):
        result[index].append(pd.read_excel(file_path, sheet_name))

    return result