class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
    @business = Business.find_by_id(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new
    @business.name = params[:name]
    @business.yelp_url = params[:yelp_url]
    @business.neighborhood_id = params[:neighborhood_id]
    @business.image_url = params[:image_url]
    @business.address = params[:address]
    
    if @business.save
      redirect_to businesses_url
    else
      render 'new'
    end
  end

  def edit
    @business = Business.find_by_id(params[:id])
  end

  def update
    @business = Business.find_by_id(params[:id])
    @business.name = params[:name]
    @business.yelp_url = params[:yelp_url]
    @business.neighborhood_id = params[:neighborhood_id]
    @business.image_url = params[:image_url]
    @business.address = params[:address]
    
    if @business.save
      redirect_to businesses_url
    else
      render 'new'
    end
  end

  def destroy
    @business = Business.find_by_id(params[:id])
    @business.destroy
    redirect_to businesses_url
  end
end
