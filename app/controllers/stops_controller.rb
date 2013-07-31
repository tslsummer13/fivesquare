class StopsController < ApplicationController

  def index
    @stops = Stop.all
  end

  def show
    @stop = Stop.find_by_id(params[:id])
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new
    @stop.line_id = params[:line_id]
    @stop.station_id = params[:station_id]
    
    if @stop.save
      redirect_to stops_url
    else
      render 'new'
    end
  end

  def edit
    @stop = Stop.find_by_id(params[:id])
  end

  def update
    @stop = Stop.find_by_id(params[:id])
    @stop.line_id = params[:line_id]
    @stop.station_id = params[:station_id]
    
    if @stop.save
      redirect_to stops_url
    else
      render 'new'
    end
  end

  def destroy
    @stop = Stop.find_by_id(params[:id])
    @stop.destroy
    redirect_to stops_url
  end
end
