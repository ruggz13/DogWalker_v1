class OwnersController < ApplicationController

    def show
        @owner = Owner.find(params[:id])
    end

    def new
        @owner = Owner.new
    end

    def create
        @owner = Owner.create(owner_params)
        redirect_to(@owner)
    end

    def edit
        @owner = Owner.find(params[:id])
    end

    def update
        @owner = Owner.find(params[:id])
        @owner.update(owner_params)
        redirect_to(@owner)
    end

    def destroy
        @owner = Owner.find(params[:id])
        @owner.destroy
        redirect_to home_path
    end

    private

    def owner_params
        params.require(:owner).permit(:name, :username)
    end
    
end
