class AddWordpressurlToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :wordpress_url, :string
  end
end
