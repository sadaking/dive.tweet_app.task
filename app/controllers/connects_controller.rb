class ConnectsController < ApplicationController
  before_action :set_connect, only: [:show, :edit, :update]
  def index
    @connect = Connect.all
  end

  def new
    @connect = Connect.new
  end

  def create
    @connect = Connect.create(connect_params)
    if @connect.save
      redirect_to new_connect_path, notice: "ブログを作成しました!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  private

  def connect_params
    params.require(:connect).permit(:connect)
  end

  def set_connect
    @connect = Connect.find(params[:id])
  end
end
