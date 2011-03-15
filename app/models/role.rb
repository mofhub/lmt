class Role < ActiveRecord::Base
  
  belongs_to :landlord
  belongs_to :project
  belongs_to :status
  
  
  validates :landlord_id, :presence => true
  validates :listing_id, :presence => true
  validates :status_it, :presence => true
  validates :title, :presence => true
  
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

