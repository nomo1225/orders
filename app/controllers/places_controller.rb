class PlacesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @places = Place.all
  end
  
  def import
    Place.import(params[:file])
    flash[:success] = '納入先を更新しました。'
    redirect_to places_path
  end
end
