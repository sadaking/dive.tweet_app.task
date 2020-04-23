class ConnectsController < ApplicationController
  def index
  end

  def new
    @connect = Connect.new
  end

  def create
    Connect.create(content: params[:connect][:content])
    redirect_to new_connect_path
  end
end
