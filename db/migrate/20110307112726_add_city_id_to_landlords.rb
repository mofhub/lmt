class AddCityIdToLandlords < ActiveRecord::Migration
  def self.up
    add_column :landlords, :city_id, :integer
  end

  def self.down
    remove_column :listings, :city_id
  end
end
