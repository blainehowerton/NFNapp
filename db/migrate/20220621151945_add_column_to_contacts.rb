class AddColumnToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :organization_id, :integer
  end
end
