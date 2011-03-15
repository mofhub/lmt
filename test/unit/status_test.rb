require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: statuses
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  position   :integer         not null
#  created_at :datetime
#  updated_at :datetime
#

