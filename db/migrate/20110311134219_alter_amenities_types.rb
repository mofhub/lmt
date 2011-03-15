class AlterAmenitiesTypes < ActiveRecord::Migration
  def self.up
    change_column :amenities, :floors, :boolean
    change_column :amenities, :parking, :boolean
    change_column :amenities, :garden, :boolean
    change_column :amenities, :furnished, :boolean
    change_column :amenities, :patio, :boolean
    change_column :amenities, :security_system, :boolean
    change_column :amenities, :fireplace, :boolean
    change_column :amenities, :dishwasher, :boolean
    change_column :amenities, :refrigerator, :boolean
    change_column :amenities, :laundry, :boolean
    change_column :amenities, :carpeted_floors, :boolean
    change_column :amenities, :internet_access, :boolean
    add_column :amenities, :washing_machine, :boolean
  end

  def self.down
    change_column :amenities, :floors, :string
    change_column :amenities, :parking, :string
    change_column :amenities, :garden, :integer
    change_column :amenities, :furnished, :integer
    change_column :amenities, :patio, :integer
    change_column :amenities, :security_system, :integer
    change_column :amenities, :fireplace, :integer
    change_column :amenities, :dishwasher, :integer
    change_column :amenities, :refrigerator, :integer
    change_column :amenities, :laundry, :integer
    change_column :amenities, :carpeted_floors, :integer
    change_column :amenities, :internet_access, :integer
    remove_column :amenities, :washing_machine, :boolean
  end
end