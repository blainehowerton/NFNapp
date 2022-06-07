class AddSectionToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :section_id, :integer
  end
end
