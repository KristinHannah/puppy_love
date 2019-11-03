class User < ApplicationRecord
    has_many :matches
    has_many :dog_breeds, through: :matches 
    belongs_to :atts_table
    has_secure_password 
    validates :email, :presence => true 
    validates :email, :uniqueness => true 

    def self.find_or_create_by_omniauth(auth_hash)
        self.where(:email => auth_hash["info"]["email"]).first_or_create do |user| 
            user.password = SecureRandom.hex 
        end 
    end 

    def assign_atts(atts_table)
        self.atts_table_id = atts_table.id
    end 

    def matcher
     user_atts = self.atts_table
     user_app = user_atts.apartment_friendly
     user_hypo = user_atts.hypoallergenic
     user_pet = user_atts.pet_friendly
     user_noise = user_atts.noise
     matches = []
     match_1 = AttsTable.where(apartment_friendly: user_app, hypoallergenic: user_hypo, pet_friendly: user_pet, noise: user_noise).where.not(dog_breed_id: nil)
        match_1.each do |m|
        matches << m.dog_breed_id
     end
    matches
    end


end
