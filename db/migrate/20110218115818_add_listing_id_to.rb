class AddListingIdTo < ActiveRecord::Migration
  def self.up
     add_column :listings, :landlord_id,    :integer
    end

    def self.down
      remove_column :listings, :landlord_id
    end
end
  
