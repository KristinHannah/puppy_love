require "pry"
class DogBreed < ApplicationRecord
    has_many :matches 
    has_many :users, through: :matches 
    belongs_to :atts_table
end

