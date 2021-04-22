class SellersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @sellers = Seller.all
  end
  
  def import
    Seller.import(params[:file])
    flash[:success] = '販売先を更新しました。'
    redirect_to sellers_path
  end
end
