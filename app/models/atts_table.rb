class AttsTable < ApplicationRecord
    belongs_to :dog_breed
    belongs_to :user 

    validates :apartment_friendly, inclusion: [true, false]
    validates :pet_friendly, inclusion: [true, false]
    validates :size, inclusion: ['small', 'medium', 'large']
    validates :hypoallergenic, inclusion: [true, false]
    validates :noise, inclusion: [true, false]
    validates :cold_weather, inclusion: [true, false]

    scope :dog, -> { where.not(dog_breed_id: nil ) }
    scope :apartment_friendly, -> (answer) { where(:apartment_friendly => answer)}
    scope :by_size, -> (answer) { where(:size => answer)}

    scope :pet_friendly, -> (answer) { where(:pet_friendly => answer) if answer == true}
    scope :hypoallergenic, -> (answer) { where(:hypoallergenic => answer) if answer == true}
    scope :no_noise, -> (answer) { where(:noise => answer) if answer == false}
    scope :cold, -> (answer) { where(:cold_weather => answer) if answer == true}

   # def self.pet_friendly(answer)
   #     if answer == true 
   #         where(pet_friendly: true) 
   #     else 
   #         all
   #     end 
   # end 

  #  def self.hypoallergenic(answer)
   #     if answer == true 
   #         where(hypoallergenic: true)
   #     else 
   #         all
   #     end 
   # end 

    # def self.no_noise(answer)
    #    if answer == false
    #        where(noise: false)
    #    else 
    #        all
    #    end 
    # end 

  #  def self.cold(answer)
   #     if answer == true 
    #        where(cold_weather: true)
    #    else 
    #        all
    #    end 
    # end 

end


