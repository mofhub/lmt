require 'test_helper'

class LandlordTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: landlords
#
#  id             :integer         not null, primary key
#  company_name   :string(255)
#  contact_person :string(255)
#  title          :string(255)
#  address        :string(255)
#  notes          :text
#  email          :string(255)
#  telephone      :string(255)
#  mobile         :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  postcode       :string(255)
#  address2       :string(255)
#  country        :string(255)
#  city_id        :integer
#

