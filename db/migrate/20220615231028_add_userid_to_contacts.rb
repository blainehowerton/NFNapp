class AddUseridToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :userid, :integer
  end
end
