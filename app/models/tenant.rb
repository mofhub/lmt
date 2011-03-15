class Tenant < ActiveRecord::Base
  
  belongs_to :listing
  belongs_to :landlord
  belongs_to :city

  email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  

  validates :first_name, :presence => true,
            :length => { :maximum => 50 }

  validates :last_name, :presence => true,
                      :length => { :maximum => 50 }
  
  validates :email, :presence => true,
                    :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
            
  validates :telephone, :presence => true,
                        :numericality => true
                        
  validates :mobile_phone, :presence => true,
                     :numericality => true
  
  validates :city_id, :presence => true
  
   def self.search(search)
     if search
       where('last_name LIKE ?', "%#{search}%")
  
     else
       scoped
     end
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

