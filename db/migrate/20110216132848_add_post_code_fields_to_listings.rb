class AddPostCodeFieldsToListings < ActiveRecord::Migration
  def self.up
     add_column :listings, :postcode,    :string
    end

    def self.down
      remove_column :listings, :postcode
    end
end
