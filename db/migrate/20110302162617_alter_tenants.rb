class AlterTenants < ActiveRecord::Migration
  def self.up
    rename_column :tenants, :landlord_id, :listing_id
  end

  def self.down
    rename_column :tenants, :listing_id, :landlord_id
  end
end
