module ApplicationHelper

	def build_usps_xml(package) 
    usps_builder = Nokogiri::XML::Builder.new do |xml|
      xml.package {
        xml.height_ package.height
        xml.length_ package.length
        xml.width_ package.width
        xml.weight_ package.weight
      }
    end
    usps_builder.to_xml
  end  
end