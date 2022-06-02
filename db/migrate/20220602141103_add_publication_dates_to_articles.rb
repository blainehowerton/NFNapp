class AddPublicationDatesToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :print_date, :date
    add_column :articles, :web_date, :date
  end
end
