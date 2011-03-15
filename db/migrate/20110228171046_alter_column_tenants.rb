class AlterColumnTenants < ActiveRecord::Migration
  def self.up
    remove_column :tenants, :notes
    add_column :tenants, :address, :string
    add_column :tenants, :city, :string
    add_column :tenants, :postcode, :string
  end

  def self.down
    add_column :tenants, :notes
    remove_column :tenants, :address
    remove_column :tenants, :city
    remove_column :tenants, :postcode
  end
end
