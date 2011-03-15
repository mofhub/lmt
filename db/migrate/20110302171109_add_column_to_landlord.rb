class AddColumnToLandlord < ActiveRecord::Migration
  def self.up
    add_column :landlords, :country, :string
  end

  def self.down
    remove_column :landlords, :country
  end
end
