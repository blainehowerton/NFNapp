class AddPhonetoContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :primary_phone, :string
    add_column :contacts, :secondary_phone, :string
    add_column :contacts, :email, :string
  end
end
