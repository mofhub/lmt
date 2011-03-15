class Documents < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :title
      t.text :notes
      t.string :listing_id
      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end


def self.up
  create_table :landlords do |t|
    
  end
end