class Listing < ActiveRecord::Base
  
  belongs_to :landlord
  has_many :projects
  has_many :documents
  has_many :amenities
  has_one :tenant
  belongs_to :city
    
  has_attached_file :photo, :styles => { :small => "100x100>", :medium => "300x300>", :thumb => "50x50>" }
  validates_attachment_content_type :photo, :content_type => 'image/jpeg', :message => "has to be in jpeg format"
    
  validates :address, :length => { :maximum => 140 }
  validates :content, :presence => true
  validates :landlord_id, :presence => true
  
  validates :postcode, :presence => true
  validates :price, :presence => true
  validates :city_id, :presence => true
  
  def self.search(search)
    if search
      where('address LIKE ?', "%#{search}%")
  
    else
      scoped
    end
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

