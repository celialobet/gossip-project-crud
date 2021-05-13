class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:show, :new, :create, :edit, :update, :destroy]

  def index
    @gossips = Gossip.all
  end
  
  def new
  end

  def create
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content]
    )
    @gossip.user = User.find_by(id: session[:user_id])
    if @gossip.save
      flash[:success] = "We saved your gossip!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to @gossip
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
  
end