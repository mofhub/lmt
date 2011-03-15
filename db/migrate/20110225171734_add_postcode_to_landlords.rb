class AddPostcodeToLandlords < ActiveRecord::Migration
  def self.up
    add_column :landlords, :postcode,    :string

  end

  def self.down
    remove_colum :landlords, :postcode
  end
end
