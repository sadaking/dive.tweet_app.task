class ConnectsController < ApplicationController
  def index
  end

  def new
    @connect = Connect.new
  end

#投稿機能の作成
  def create
    Connect.create(content: params[:connect][:content])
    redirect_to new_connect_path
  end
end
