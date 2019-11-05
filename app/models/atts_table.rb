class AttsTable < ApplicationRecord
    belongs_to :dog_breed
    belongs_to :user 

  #  scope :apartment_friendly, -> { where(apartment_friendly: true) }
  #  scope :apartment_and_pet_friendly -> { apartment_friendly.where(pet_friendly: true) }
  #  scope :hypoallergenic, -> { where(hypoallergenic: true) }
end
