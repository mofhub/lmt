class AddBedroomsEctToListings < ActiveRecord::Migration
  def self.up  
    add_column :listings, :bedrooms, :string
    add_column :listings, :bathrooms, :string
    add_column :listings, :ad_type, :string
  end

  def self.down
    remove_column :listings, :bedrooms
    remove_column :listings, :bathrooms
    remove_column :listings, :ad_type 
  end
  
end
