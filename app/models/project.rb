class Project < ActiveRecord::Base
  
  has_many :roles, :dependent => :destroy
  belongs_to :listing
  belongs_to :landlord
  
  
  validates :title, :presence => true
  validates :body, :presence => true
  
end

# == Schema Information
#
# Table name: projects
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  listing_id :integer
#  created_at :datetime
#  updated_at :datetime
#

