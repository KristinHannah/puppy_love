class User < ApplicationRecord
    has_many :matches
    has_many :dog_breeds, through: :matches 
    has_one :atts_table
    accepts_nested_attributes_for :atts_table

    has_secure_password 
    
    validates :email, :presence => true 
    validates :email, :uniqueness => true 

    def self.find_or_create_by_omniauth(auth_hash)
        self.where(:email => auth_hash["info"]["email"]).first_or_create do |user| 
            user.password = SecureRandom.hex 
        end 
    end 

   # def assign_atts(atts_table)
   #     self.atts_table_id = atts_table.id
   # end 

    def matcher
     user_atts = self.atts_table
     matches = []
     match_1 = AttsTable.dog.apartment_friendly(user_atts.apartment_friendly).by_size(user_atts.size).pet_friendly(user_atts.pet_friendly).hypoallergenic(user_atts.hypoallergenic).no_noise(user_atts.noise).cold(user_atts.cold_weather)
        match_1.each do |m|
        matches << m.dog_breed_id
     end
    matches
    end

    def matcher_new 
        @user_atts = self.atts_table
        matches = []
        match_1 = AttsTable.dog.apartment_friendly(@user_atts.apartment_friendly).pet_friendly(@user_atts.pet_friendly).by_size(@user_atts.size)
            if @user_atts.hypoallergenic == true 
                match_1 = match_1.hypoallergenic
            end         
            if @user_atts.noise == false 
                match_1 = match_1.no_noise
            end 
            if @user_atts.cold_weather == true 
                match_1 = match_1.cold 
            end 
            match_1.each do |m|
                matches << m.dog_breed_id
             end
            matches 
    end 

    def match_accesser 
       find_user_matches = Match.select {|u| u.user_id == self.id}
       find_user_matches
    end 

end
