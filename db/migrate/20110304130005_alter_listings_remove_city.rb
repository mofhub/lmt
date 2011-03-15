class AlterListingsRemoveCity < ActiveRecord::Migration
  def self.up
    remove_column :listings, :city
    remove_column :landlords, :city
  end

  def self.down
    add_column :listings, :city
    add_column :landlords, :city
  end
end
