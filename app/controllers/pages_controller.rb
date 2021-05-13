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

end