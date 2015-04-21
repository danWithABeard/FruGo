module CreatePackageData
  extend ActiveSupport::Concern
	
  def create_dimension_array(dim1, dim2, dim3)
    dimension_array = []
    dimension_array.push(dim1, dim2, dim3)
    return dimension_array.sort!
  end

	def build_usps_xml(package) 
    usps_builder = Nokogiri::XML::Builder.new do |xml|
      xml.package {
        xml.height_ package.height
        xml.length_ package.length
        xml.width_ package.width
        xml.girth_ package.girth
        xml.weight_ package.weight
        xml.zip_origination_ package.zip_origination
        xml.zip_destination_ package.zip_destination
      }
    end
    usps_builder.to_xml
  end
end