class AddAdidToAds < ActiveRecord::Migration[7.0]
  def change
    rename_column :ads, :adsize, :adsize_id
  end
end
