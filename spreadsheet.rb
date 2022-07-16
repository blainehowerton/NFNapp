require 'google_drive'

session = GoogleDrive::Session.from_service_account_key("client_secret.json")

spreadsheet = session.spreadsheet_by_title("insertions")
worksheet = spreadsheet.worksheets.first
worksheet.rows.first(10).each { |row| puts row.first(6).reverse.join("  |  ") }

#inserts rows 1 at a time at the end of the worksheet, adding the row data
worksheet.insert_rows(worksheet.num_rows + 1, 
	[
		["This", "was", "added", "from", "code"],
		["This", "was", "also", "from", "code"],
	])

#updates cell c42 with the word updated
worksheet["C42"] = "updated"

#deletes 1 row starting at row 2
worksheet.delete_rows(2,1)


worksheet.save

