class Contacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first

      t.timestamps
    end
  end
end
