class AttsTable < ApplicationRecord
    belongs_to :dog_breed
    belongs_to :user 

    validates :apartment_friendly, presence: true
    validates :pet_friendly, presence: true
    validates :size, presence: true
    validates :hypoallergenic, presence: true
    validates :noise, presence: true
    validates :cold_weather, presence: true

    scope :dog, -> { where.not(dog_breed_id: nil ) }
    scope :apartment_friendly, -> (answer) { where(:apartment_friendly => answer)}
    scope :by_size, -> (answer) { where(:size => answer)}


    def self.pet_friendly(answer)
        if answer == true 
            where(pet_friendly: true) 
        else 
            all
        end 
    end 

    def self.hypoallergenic(answer)
        if answer == true 
            where(hypoallergenic: true)
        else 
            all
        end 
    end 

    def self.no_noise(answer)
        if answer == false
            where(noise: false)
        else 
            all
        end 
    end 

    def self.cold(answer)
        if answer == true 
            where(cold_weather: true)
        else 
            all
        end 
    end 

end


