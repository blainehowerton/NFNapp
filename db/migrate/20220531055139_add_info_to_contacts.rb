class AddInfoToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :last, :string
  end
end
