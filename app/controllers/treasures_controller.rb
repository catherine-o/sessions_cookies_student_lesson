class TreasuresController < ApplicationController
  def index
    @treasures = Treasure.all
  end
end 
