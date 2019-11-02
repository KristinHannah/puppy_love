class User < ApplicationRecord
    has_many :matches
    has_many :dog_breeds, through: :matches 
    belongs_to :atts_table

    validates :email, :presence => true 
    validates :email, :uniqueness => true 
end
