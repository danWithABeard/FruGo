class PackagesController < ApplicationController

  def index
  end

  def show
    @package = Package.find(params[:id])
  end

  def new
    @package = Package.new
  end

  def create
    length = params[:package][:length]
    width = params[:package][:width]
    height = params[:package][:height]
    weight = params[:package][:weight]
    
    @package = Package.new(length: length, width: width, height: height, weight: weight)

    # Save to the database
    if @package.save
      redirect_to @package
    else
      render "new"
    end    
  end


end