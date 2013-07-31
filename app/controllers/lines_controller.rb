class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def show
    @line = Line.find_by_id(params[:id])
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new
    @line.color = params[:color]
    
    if @line.save
      redirect_to lines_url
    else
      render 'new'
    end
  end

  def edit
    @line = Line.find_by_id(params[:id])
  end

  def update
    @line = Line.find_by_id(params[:id])
    @line.color = params[:color]
    
    if @line.save
      redirect_to lines_url
    else
      render 'new'
    end
  end

  def destroy
    @line = Line.find_by_id(params[:id])
    @line.destroy
    redirect_to lines_url
  end
end
