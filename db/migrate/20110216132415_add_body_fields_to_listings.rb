class AddBodyFieldsToListings < ActiveRecord::Migration
  def self.up
      add_column :listings, :body,    :text
    end

    def self.down
      remove_column :listings, :body
    end
end
