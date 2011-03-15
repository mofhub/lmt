class AddCityIdToListings < ActiveRecord::Migration
  def self.up
    add_column :listings, :city_id, :integer
    add_column :listings, :show_weekly, :boolean
  end

  def self.down
    remove_column :listings, :city_id
    remove_column :listings, :show_weekly
  end
end
