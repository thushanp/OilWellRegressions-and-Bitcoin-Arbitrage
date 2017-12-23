import xlrd
book = xlrd.open_workbook('deviancedata.xlsx')
sheet = book.sheet_by_name('Sheet3')
data = [sheet.cell_value(r, c) for c in range(sheet.ncols) for r in range(sheet.nrows)]
# Profit !
print(data)