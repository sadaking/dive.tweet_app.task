class ConnectsController < ApplicationController
  before_action :set_connect, only: [:show, :edit, :update, :destroy]
  def index
    @connect = Connect.all
  end

  def new
    @connect = Connect.new
  end

  def create
    @connect = Connect.new(connect_params)
    if @connect.save
      redirect_to new_connect_path, notice: "ツイートを作成しました！!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @connect.update(connect_params)
      redirect_to connects_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @connect.destroy
    redirect_to connect_path, notice:"ツイートを削除しました！"
  end

  private

  def connect_params
    params.require(:connect).permit(:connect)
  end

  def set_connect
    @connect = Connect.find(params[:id])
  end
end
