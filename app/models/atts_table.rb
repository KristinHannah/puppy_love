class AttsTable < ApplicationRecord
    belongs_to :dog_breed
    belongs_to :user 

    scope :dog, -> { where.not(dog_breed_id: nil ) }
    scope :apartment_friendly, -> (answer) { where(:apartment_friendly => answer)}
    scope :by_size, -> (answer) { where(:size => answer)}


    def self.by_status(status)
        if status.present?
          where(status: status)
        else
          all
        end
      end

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

   # scope :pet_friendly, -> { where(:pet_friendly: true) }
   # scope :hypoallergenic, -> { where(hypoallergenic: true)  }
   # scope :no_noise, -> { where(noise: false)}
   # scope :cold, -> { where(cold_weather: true)}


end


