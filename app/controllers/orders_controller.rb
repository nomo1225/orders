class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  def new
    @order = Order.new
    @received_id = params[:received_id] #parameterからreceived_idを入れる
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = '発注データを登録しました。'
      redirect_to order_path(@order)
    else
      flash[:danger] = '登録できませんでした。'
      render :new
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
  
  private
  
  def set_order
    @order = Order.find(params[:id])
  end
  
  def order_params
    params.require(:order).permit(:number, :answered_day, :received_id)
  end
end
