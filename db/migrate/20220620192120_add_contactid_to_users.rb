class AddContactidToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :contactid, :integer
  end
end
