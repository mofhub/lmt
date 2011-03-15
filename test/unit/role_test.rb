require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: roles
#
#  id          :integer         not null, primary key
#  landlord_id :integer         not null
#  project_id  :integer         not null
#  status_id   :integer         default(1), not null
#  title       :string(255)     not null
#  created_at  :datetime
#  updated_at  :datetime
#

