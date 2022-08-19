class AddAdsMigration < ActiveRecord::Migration[7.0]
  def self.up
    create_table :ads do |t|
      t.integer "organization"
      t.date "date"
      t.integer "edition"
      t.integer "section"
      t.text "notes"
      t.integer "adsize"
      t.text "text"
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end

end