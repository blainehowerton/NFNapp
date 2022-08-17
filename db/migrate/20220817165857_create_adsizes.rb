class CreateAdsizes < ActiveRecord::Migration[7.0]
  def change
    create_table :adsizes do |t|
    t.decimal :ad_width
    t.decimal :ad_height
    t.text :ad_name
    t.string :ad_description
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false

    t.timestamps
    end
  end
end
