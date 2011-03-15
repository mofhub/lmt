class Landlord < ActiveRecord::Base
  
  belongs_to :user
  has_many :roles
  has_many :listings
  has_many :tenants
  has_many :diaries
  belongs_to :city  

  email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :company_name, :presence => true,
            :length => { :maximum => 50 }

  validates :contact_person, :presence => true,
                      :length => { :maximum => 50 }
  
  validates :email, :presence => true,
                       :format => { :with => email_regex },
                       :uniqueness => { :case_sensitive => false }

  validates :telephone, :presence => true,
                        :numericality => true

  validates :city_id, :presence => true                      
  validates :postcode, :presence => true
  
  def self.search(search)
    if search
      where('contact_person LIKE ?', "%#{search}%")
  
    else
      scoped
    end
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

