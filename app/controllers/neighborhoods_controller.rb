class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find_by_id(params[:id])
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new
    @neighborhood.name = params[:name]
    @neighborhood.history = params[:history]
    @neighborhood.demographics = params[:demographics]
    @neighborhood.image_url = params[:image_url]
    @neighborhood.center = params[:center]
    
    if @neighborhood.save
      redirect_to neighborhoods_url
    else
      render 'new'
    end
  end

  def edit
    @neighborhood = Neighborhood.find_by_id(params[:id])
  end

  def update
    @neighborhood = Neighborhood.find_by_id(params[:id])
    @neighborhood.name = params[:name]
    @neighborhood.history = params[:history]
    @neighborhood.demographics = params[:demographics]
    @neighborhood.image_url = params[:image_url]
    @neighborhood.center = params[:center]
    
    if @neighborhood.save
      redirect_to neighborhoods_url
    else
      render 'new'
    end
  end

  def destroy
    @neighborhood = Neighborhood.find_by_id(params[:id])
    @neighborhood.destroy
    redirect_to neighborhoods_url
  end
end
