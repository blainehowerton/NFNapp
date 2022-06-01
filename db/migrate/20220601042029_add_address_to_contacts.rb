class AddAddressToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :address_1, :string
    add_column :contacts, :address_2, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    add_column :contacts, :city, :string
    add_column :contacts, :zip, :string
  end
end
