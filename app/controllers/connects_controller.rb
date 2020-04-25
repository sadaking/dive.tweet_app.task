class ConnectsController < ApplicationController
  before_action :set_connect, only: [:show, :edit, :update, :destroy]
  def index
    @connects = Connect.all
  end

  def new
    @connect = Connect.new
  end

  def create
    @connect = Connect.new(connect_params)
    if params[:back]
      render :new
    else
      if @connect.save
        redirect_to connects_path, notice: "ツイートを作成しました！"
      else
        render :new
      end
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
    if @connect.update(connect_params)
      redirect_to connects_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @connect.destroy
    redirect_to connects_path, notice:"ツイートを削除しました！"
  end

  def confirm
    @connect = Connect.new(connect_params)
    render :new if @connect.invalid?
  end

  private
  def connect_params
    params.require(:connect).permit(:content)
  end

  def set_connect
    @connect = Connect.find(params[:id])
  end
end
