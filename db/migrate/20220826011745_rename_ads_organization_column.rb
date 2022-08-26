class RenameAdsOrganizationColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :ads, :organization, :organization_id
  end
end
