class PackagesController < ApplicationController

  include CreatePackageData

  def index
  end

  def show
    @package = Package.find(params[:id])
  end

  def new
    @package = Package.new
  end

  def create
    dim_1 = params[:package][:dimension_1].to_i
    dim_2 = params[:package][:dimension_2].to_i
    dim_3 = params[:package][:dimension_3].to_i

    dimension_array = create_dimension_array(dim_1, dim_2, dim_3)

    height = dimension_array[0]
    width = dimension_array[1]
    length = dimension_array[2]
    
    girth = 2 * (length + width)

    weight = params[:package][:weight]
    zip_origination = params[:package][:zip_origination]
    zip_destination = params[:package][:zip_destination]
    
    @package = Package.new(length: length, 
                            width: width, 
                            height: height, 
                            girth: girth,
                            weight: weight,
                            zip_origination: zip_origination,
                            zip_destination: zip_destination)

    # Save to the database
    if @package.save
      redirect_to @package
    else
      render "new"
    end    
  end


end