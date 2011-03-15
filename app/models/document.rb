class Document < ActiveRecord::Base
  belongs_to :listing
end

# == Schema Information
#
# Table name: documents
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  notes      :text
#  listing_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

