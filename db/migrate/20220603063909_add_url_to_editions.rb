class AddUrlToEditions < ActiveRecord::Migration[7.0]
  def change
    add_column :editions, :url, :string
  end
end
