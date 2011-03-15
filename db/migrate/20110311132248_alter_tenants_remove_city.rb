class AlterTenantsRemoveCity < ActiveRecord::Migration
  def self.up
    remove_column :tenants, :city
    
  end

  def self.down
    add_column :tenants, :city
  end
end
