class AlterAmenitiesAddColumn < ActiveRecord::Migration
  def self.up
    add_column :amenities, :unfurnished, :boolean
    add_column :amenities, :partly_furnished, :boolean
    add_column :amenities, :hard_wood_floors, :boolean
    add_column :amenities, :workout_facilities, :boolean
    add_column :amenities, :pet_ok, :boolean
    add_column :amenities, :dog_ok, :boolean
    add_column :amenities, :cat_ok, :boolean
    add_column :amenities, :roof_terrace, :boolean
    add_column :amenities, :garage, :boolean
  end

  def self.down
    remove_column :amenities, :unfurnished, :boolean
    remove_column :amenities, :partly_furnished, :boolean
    remove_column :amenities, :hard_word_floors, :boolean
    remove_column :amenities, :workout_facilities, :boolean
    remove_column :amenities, :pet_ok, :boolean
    remove_column :amenities, :dog_ok, :boolean
    remove_column :amenities, :cat_ok, :boolean
    remove_column :amenities, :roof_terrace, :boolean
    remove_column :amenities, :garage, :boolean
  end
end