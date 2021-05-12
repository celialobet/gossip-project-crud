class PagesController < ApplicationController
  def home
    @gossips = Gossip.all
  end

  def team
  end

  def contact
  end

  def welcome
    params[:user_name]
  end

  def show_gossip
    @show_specific_gossip = Gossip.find(params[:id])
  end

  def show_author
  end  

end