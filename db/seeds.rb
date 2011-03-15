# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


[
  {:title => "For Rent", :position => 1},
  {:title => "For Sale", :position => 2},
  {:title => "Maintenance", :position => 3},
  {:title => "Rented", :position => 4},
  {:title => "Sold", :position => 5},
  
].each do |attributes|
  Status.find_or_create_by_title(attributes)
end 