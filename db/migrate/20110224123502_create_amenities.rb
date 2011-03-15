class CreateAmenities < ActiveRecord::Migration
  def self.up
    create_table :amenities do |t|
      t.string :floors
      t.integer :square_ft
      t.string :parking
      t.integer :garden
      t.integer :furnished
      t.integer :balcony
      t.integer :patio
      t.integer :security_system
      t.integer :fireplace
      t.integer :dishwasher
      t.integer :refrigerator
      t.integer :laundry
      t.integer :carpeted_floors
      t.integer :internet_access
      
      t.timestamps
    end
  end

  def self.down
    drop_table :amenities
  end
end
