class AddFieldToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :notes, :string
  end

  def self.down
    remove_colum :users, :notes
  end
end
