class DogBreedsController < ApplicationController

    def index
        if params[:name]
            @dogs = DogBreed.where('name LIKE ?', "%#{params[:name]}%")
        else 
          @dogs = DogBreed.all 
        end
    end 

    def show 
        @dog_breed = DogBreed.find(params[:id])
    end 

    private

    def dog_params 
        params.require(:dog_breed).permit(:name)
    end 

end

