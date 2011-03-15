class Diary < ActiveRecord::Base
  
  belongs_to :landlord
  
  validates :title, :presence => true
  validates :body,  :presence => true 
  
end

# == Schema Information
#
# Table name: diaries
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  body        :text
#  landlord_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

