class AddDateToEditions < ActiveRecord::Migration[7.0]
  def change
    add_column :editions, :issue_date, :date
  end
end
