class AddPhotoColumnsToListings < ActiveRecord::Migration
  def self.up
    remove_column :listings, :image
    
  end

  def self.down
  
  end
end