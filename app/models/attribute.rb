class Attribute < ApplicationRecord
    belongs_to :dog_breed
    belongs_to :user 
end
