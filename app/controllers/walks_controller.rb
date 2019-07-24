class WalksController < ApplicationController
  before_action walk_params, only: [:show, :destroy, :create_review]

  def show
  end

  def new
    @walk = Walk.new
  end

  def create
    @walk = Walk.create(walk_params(:walker_id, :dog_id))
  end

  def destroy
    walker = @walk.walker
    @walk.destroy
    redirect_to walker
  end

  def create_walker_rating
    # adds walker rating to the walk
  end

  def create_dog_rating
    # adds dog rating to the walk
  end

  private

  def find_walk
      @walk = Walk.find(params[:id])
  end

  def walk_params(*args)
      params.require(:walk).permit(*args)
  end
end
