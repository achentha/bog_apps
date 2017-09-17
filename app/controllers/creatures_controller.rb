class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find_by_id(params[:id])
  end

  def new
  end

  def create
    creature = Creature.create(creature_params)
    redirect_to creature_path(creature)

  end

  def edit
    @creature = Creature.find_by_id(params[:id])
  end

  def update
    creature = Creature.find_by_id(params[:id])
    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
