class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :email
      t.text :note
      t.string :tag
      t.string :company
      t.string :title
      t.string :fax
      t.string :mobile
      t.string :list
      t.string :type

      t.timestamps
    end
  end
end
