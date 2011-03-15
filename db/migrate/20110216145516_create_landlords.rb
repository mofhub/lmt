class CreateLandlords < ActiveRecord::Migration
  def self.up
    create_table :landlords do |t|
      t.string :company_name
      t.string :contact_person
      t.string :title
      t.string :address
      t.string :city
      t.text :notes
      t.string :email
      t.string :telephone
      t.string :mobile

      t.timestamps
    end
  end

  def self.down
    drop_table :landlords
  end
end
