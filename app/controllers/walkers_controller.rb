class WalkersController < ApplicationController
  before_action find_walker, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @walker = Walker.new
  end

  def create
    @walker = wakler.create(walker_params(:name, :username))
  end

  def edit
  end

  def update
    @walker.update(walker_params(:name, :username))
    reditect_to @walker
  end

  def destroy
    @walker.destroy(params[:id])
    redirect_to home_path
  end

  private

  def find_walker
    @walker = Walker.find(params[:id])
  end

  def walker_params(*args)
    params.require(:walker).permit(*args)
  end
end
