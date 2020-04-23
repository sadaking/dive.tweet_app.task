class ConnectsController < ApplicationController
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
    @connect = Connect.find(params[:id])
  end

  def edit
    @connect = Connect.find(params[:id])
  end

  def update
    @connect = Connect.find(params[:id])
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
end
