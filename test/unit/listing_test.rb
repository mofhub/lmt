require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: listings
#
#  id                 :integer         not null, primary key
#  address            :string(255)
#  content            :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  price              :integer
#  body               :text
#  postcode           :string(255)
#  landlord_id        :integer
#  property_type      :string(255)
#  bedrooms           :string(255)
#  bathrooms          :string(255)
#  ad_type            :string(255)
#  position           :integer
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  city_id            :integer
#  show_weekly        :boolean
#

