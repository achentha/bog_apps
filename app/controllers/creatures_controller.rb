class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
  end

  def create
    creature = Creature.create(creature_params)
    redirect_to creatures_path

  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end