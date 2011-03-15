class AlterAmenitiesListingId < ActiveRecord::Migration
  def self.up
    add_column :amenities, :listing_id, :integer
  end

  def self.down
    remove_column :amenities, :listing_id
  end
end
