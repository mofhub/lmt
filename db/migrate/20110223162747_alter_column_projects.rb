class AlterColumnProjects < ActiveRecord::Migration
  def self.up
      rename_column :projects, :landlord_id, :listing_id
  end

  def self.down
  end
end
