from robot.api.deco import keyword
import pandas as pd

class dataval:
    @keyword
    def get_row(self, file_path, sheet_name, rowno, col_name):
        df = pd.read_excel(file_path, sheet_name=sheet_name)
        return str(df.at[int(rowno), col_name])

    @keyword
    def get_total_rows(self, file_path, sheet_name):
        df = pd.read_excel(file_path, sheet_name=sheet_name)
        return len(df)