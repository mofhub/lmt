class AddColumnToLandlords < ActiveRecord::Migration
  def self.up
    add_column :landlords, :address2, :string    
  end

  def self.down
    remove_column :landlords, :address2
  end
end
