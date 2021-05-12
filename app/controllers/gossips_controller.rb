class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  
  def new
  end

  def create
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content],
      'user_id' => User.find_by(first_name: "anonymous").id,
      'tag_id' => Tag.all.sample.id)
  
    if @gossip.save 
      flash.alert = "We saved your gossip!"
      redirect_to gossips_path
    else
      flash.alert = "We couldn't save your gossip!"
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end