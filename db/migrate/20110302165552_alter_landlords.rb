class AlterLandlords < ActiveRecord::Migration
  def self.up
    remove_column :landlords, :avatar_file_name
    remove_column :landlords, :avatar_file_size
    remove_column :landlords, :avatar_updated_at
    remove_column :landlords, :avatar_content_type
  end

  def self.down
    add_column :landlords, :avatar_file_name, :string
    add_column :landlords, :avatar_file_size, :integer
    add_column :landlords, :avatar_updated_at, :datetime
    add_column :landlords, :avatar_content_type, :string
  end
end
