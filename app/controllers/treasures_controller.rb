class TreasuresController < ApplicationController
  def index
    if current_user
      @treasures = Treasure.all
    else 
      render file: 'public/404.html'
    end
  end
end 
