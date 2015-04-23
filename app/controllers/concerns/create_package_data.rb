module CreatePackageData
  extend ActiveSupport::Concern
	
  def create_dimension_array(dim1, dim2, dim3)
    dimension_array = []
    dimension_array.push(dim1, dim2, dim3)
    return dimension_array.sort!
  end
end