class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.string :address
      t.string :city
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
