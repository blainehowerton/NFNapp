class RenameAdsEditionColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :ads, :edition, :edition_id
  end
end
