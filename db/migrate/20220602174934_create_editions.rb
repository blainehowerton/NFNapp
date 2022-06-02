class CreateEditions < ActiveRecord::Migration[7.0]
  def change
    create_table :editions do |t|
      t.string :title
      t.integer :number

      t.timestamps
    end
  end
end
