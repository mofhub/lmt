require 'test_helper'

class TenantTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end



# == Schema Information
#
# Table name: tenants
#
#  id            :integer         not null, primary key
#  first_name    :string(255)     not null
#  last_name     :string(255)     not null
#  email         :string(100)     not null
#  telephone     :string(50)
#  mobile_phone  :string(50)
#  job_title     :string(255)
#  date_of_birth :date
#  gender        :string(1)
#  created_at    :datetime
#  updated_at    :datetime
#  listing_id    :integer
#  address       :string(255)
#  postcode      :string(255)
#  city_id       :integer
#

