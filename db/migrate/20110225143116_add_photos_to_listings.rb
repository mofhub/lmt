class AddPhotosToListings < ActiveRecord::Migration
  def self.up
        add_column :listings, :photo_file_name, :string
        add_column :listings, :photo_content_type, :string
        add_column :listings, :photo_file_size, :integer
        remove_column :listings, :image
  end

  def self.down
        remove_column :listings, :photo_file_name
        remove_column :listings, :photo_content_type
        remove_column :listings, :photo_file_size
        add_column :listings, :image, :string
        
  end
end
