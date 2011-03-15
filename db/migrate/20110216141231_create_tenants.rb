class CreateTenants < ActiveRecord::Migration
  def self.up
    create_table :tenants do |t|
       t.column :first_name, :string, :null => false
       t.column :last_name, :string, :null => false
       t.column :email, :string, :limit => 100, :null => false
       t.column :telephone, :string, :limit => 50
       t.column :mobile_phone, :string, :limit => 50
       t.column :job_title, :string
       t.column :date_of_birth, :date
       t.column :gender, :string, :limit => 1
       t.column :notes, :text
       
      t.timestamps
    end
  end

  def self.down
    drop_table :tenants
  end
end
