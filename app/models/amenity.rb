class Amenity < ActiveRecord::Base
  belongs_to :listing
end



# == Schema Information
#
# Table name: amenities
#
#  id                 :integer         not null, primary key
#  floors             :boolean(255)
#  square_ft          :integer
#  parking            :boolean(255)
#  garden             :boolean
#  furnished          :boolean
#  balcony            :integer
#  patio              :boolean
#  security_system    :boolean
#  fireplace          :boolean
#  dishwasher         :boolean
#  refrigerator       :boolean
#  laundry            :boolean
#  carpeted_floors    :boolean
#  internet_access    :boolean
#  created_at         :datetime
#  updated_at         :datetime
#  listing_id         :integer
#  unfurnished        :boolean
#  partly_furnished   :boolean
#  hard_wood_floors   :boolean
#  workout_facilities :boolean
#  pet_ok             :boolean
#  dog_ok             :boolean
#  cat_ok             :boolean
#  roof_terrace       :boolean
#  garage             :boolean
#  washing_machine    :boolean
#

