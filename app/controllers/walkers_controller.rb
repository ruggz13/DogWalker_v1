class WalkersController < ApplicationController

  def show
    @walker = Walker.find(params[:id])
  end

  def new
    @walker = Walker.new
  end

  def create
    @walker = wakler.create
  end

  def edit
    
  end

  def update

  end

  def destroy

  end

  private

  def find_walker
    @walker = Walker.find(params[:id])
  end

  def walker_params(*args)
    params.require(:walker).
  end
  
end
