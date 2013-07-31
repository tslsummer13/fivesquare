class StationsController < ApplicationController

  def index
    @stations = Station.all
  end

  def show
    @station = Station.find_by_id(params[:id])
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new
    @station.address = params[:address]
    @station.neighborhood_id = params[:neighborhood_id]
    @station.name = params[:name]
    
    if @station.save
      redirect_to stations_url
    else
      render 'new'
    end
  end

  def edit
    @station = Station.find_by_id(params[:id])
  end

  def update
    @station = Station.find_by_id(params[:id])
    @station.address = params[:address]
    @station.neighborhood_id = params[:neighborhood_id]
    @station.name = params[:name]
    
    if @station.save
      redirect_to stations_url
    else
      render 'new'
    end
  end

  def destroy
    @station = Station.find_by_id(params[:id])
    @station.destroy
    redirect_to stations_url
  end
end
