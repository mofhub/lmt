class AddFieldsToListings < ActiveRecord::Migration

    def self.up
      add_column :listings, :city,    :string
    end

    def self.down
      remove_column :listings, :city
    end
  end