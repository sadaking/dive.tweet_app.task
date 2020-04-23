class ConnectsController < ApplicationController
  def index
    @connect = Connect.all
  end

  def new
    @connect = Connect.new
  end

  def create
    Connect.create(connect_params)
    redirect_to new_connect_path
  end

  def show
  end

  private
  
  def connect_params
    params.require(:connect).permit(:connect)
  end
end
