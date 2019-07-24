class DogsController < ApplicationController

    def show
        @dog = Dog.find(params[:id])
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to(@dog)
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect_to(@dog)
    end

    def destroy
        @dog = Dog.find(params[:id])
        @owner = @dog.owner
        @dog.destroy
        redirect_to owner_path(@owner)
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed)
    end

end
