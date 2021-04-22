class ReceivedsController < ApplicationController
  before_action :set_received, only: [:show, :edit, :update, :destroy]
  
  def new
    @received = Received.new
  end

  def create
    @received = Received.new(received_params)
    if @received.save
      flash[:success] = '受注情報を登録しました。'
      redirect_to receiveds_path
    else
      flash[:danger] = '受注情報を登録できませんでした。'
      render :new
    end
  end

  def show
  end

  def index
    @receiveds = Received.all.page(params[:page]).per(15)
  end

  def edit
  end

  def update
    if Received.update(received_params)
      flash[:success] = '受注情報を更新しました。'
      redirect_to receiveds_path
    else
      flash[:danger] = '受注情報を編集できませんでした。'
      render :edit
    end
  end

  def destroy
    @received.destroy
    flash[:success] = '受注情報を削除しました。'
    redirect_to receiveds_path
  end
  
  private
  
  def set_received
    @received = Received.find(params[:id])
  end
  
  def received_params
    params.require(:received).permit(:number, :desired_day, :seller_id, :name, :place_id, :product_id, :quantity)
  end
  
end
