class AlterColumnUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :notes
  end

  def self.down
    add_column :users, :notes, :text
  end
end
