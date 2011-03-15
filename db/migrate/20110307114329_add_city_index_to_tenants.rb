class AddCityIndexToTenants < ActiveRecord::Migration
  def self.up
    add_column :tenants, :city_id, :integer
  end

  def self.down
    remove_column :tenants, :city_id
  end
end
