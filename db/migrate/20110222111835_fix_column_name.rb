class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :roles, :listing_id, :project_id
  end

  def self.down
  end
end
