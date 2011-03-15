class AddPropertyTypeToListings < ActiveRecord::Migration
    def self.up
      add_column :listings, :property_type, :string
    end

    def self.down
      remove_column :listings, :property_type
    end
  end