class User < ApplicationRecord
    has_many :matches
    has_many :dog_breeds, through: :matches 
 
end
