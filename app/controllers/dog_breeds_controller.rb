class DogBreedsController < ApplicationController

    def index
        @dogs = DogBreed.all 
    end 

    def show 
        @dog = DogBreed.find(params[:id])
    end 
end
