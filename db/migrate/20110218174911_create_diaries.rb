class CreateDiaries < ActiveRecord::Migration
  def self.up
    create_table :diaries do |t|
      t.string :title
      t.text :body
      t.integer :landlord_id

      t.timestamps
    end
  end

  def self.down
    drop_table :diaries
  end
end
