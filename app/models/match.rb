class Match < ApplicationRecord
    belongs_to :user
    belongs_to :dog_breed 

    def self.match_creater(user_id, matches)
        matches.each do | dog_id |
            Match.create(user_id: user_id, dog_breed_id: dog_id)
        end 
    end 

end


