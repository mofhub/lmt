class AddPositionToListings < ActiveRecord::Migration
  def self.up
    add_column :listings, :position, :integer
  end

  def self.down
    remove_column :listings, :position
  end
end
