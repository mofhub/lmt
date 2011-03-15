class AlterLandlordsAvatar < ActiveRecord::Migration
  def self.up
    remove_column :landlords, :avatar_content_type
  end

  def self.down
    add_column :landlords, :avatar_content_type, :string
  end
end
