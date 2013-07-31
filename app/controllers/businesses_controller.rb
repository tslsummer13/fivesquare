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
    @business.address = params[:address]
    @business.phone = params[:phone]
    @business.category = params[:category]
    @business.neighborhood_id = params[:neighborhood_id]
    @business.hours = params[:hours]
    @business.image_url = params[:image_url]
    
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
    @business.address = params[:address]
    @business.phone = params[:phone]
    @business.category = params[:category]
    @business.neighborhood_id = params[:neighborhood_id]
    @business.hours = params[:hours]
    @business.image_url = params[:image_url]
    
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
