class CitiesController < ApplicationController
  def show
    @gossips = Gossip.all
    #to be modified
  end
end