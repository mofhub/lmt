class City < ActiveRecord::Base
  has_many :listings
  has_many :landlords
  has_many :tenants
end

# == Schema Information
#
# Table name: cities
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

