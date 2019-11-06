class AttsTable < ApplicationRecord
    belongs_to :dog_breed
    belongs_to :user 

    scope :dog, -> { where.not(dog_breed_id: nil ) }
    scope :apartment_friendly, -> (answer) { where(:apartment_friendly => answer)}
    scope :pet_friendly, -> (answer) { where(:pet_friendly => answer) }
    scope :hypoallergenic, -> { where(hypoallergenic: true)  }
    scope :no_noise, -> { where(noise: false)}
    scope :cold, -> { where(cold_weather: true)}
    scope :size, -> (select_size) { where(:size => select_size)}
end

