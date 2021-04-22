class ProductsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @products = Product.all
  end

  def import
    Product.import(params[:file])
    flash[:success] = '商品一覧を更新しました。'
    redirect_to products_path
  end

end
