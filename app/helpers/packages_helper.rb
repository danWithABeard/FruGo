module PackagesHelper

	def build_usps_xml(package) 
    usps_builder = Nokogiri::XML::Builder.new do |xml|
      xml.RateV4Request_ {
        xml.Package {
          xml.Service_ 
          xml.ZipOrigination_ package.zip_origination
          xml.ZipDestination_ package.zip_destination
          xml.Pounds_ 
          xml.Ounces_
          xml.Container_
          xml.Size_
          xml.Width_ package.width
          xml.Length_ package.length
          xml.Height_ package.height
          xml.Girth_ package.girth        
        }
      }
    end
    usps_builder.to_xml
  end
end