class AddColumnToTenants < ActiveRecord::Migration
  def self.up
    add_column :tenants, :landlord_id, :integer
  end

  def self.down
    remove_column :tenants, :landlord_id
  end
end
