class DogBreedsController < ApplicationController

    def index
        @dogs = DogBreed.all 
    end 

end
