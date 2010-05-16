require 'fileutils'
require 'nokogiri'

module DomTest
  class Dtd
    attr_reader :level
    
    def initialize(level)
      @level = level
    end
    
    def build
      filename = DomTest.dom_dtd_filename(level)
      unless File.exists?(filename)
        puts "building dtd level #{level}"
        dtd = xslt.apply_to(xml, schema_information) 
        File.open(filename, 'wb') { |f| f.write(dtd) }
      end
    end
    
    def xml
      Nokogiri::XML.parse(File.read(DomTest.interfaces_filename(level)), xml_filename)
    end
    
    def xslt
      Nokogiri::XSLT.parse(File.read(DomTest.dom_to_dtd_filename(level)))
    end
    
    def schema_information
      %w(schema-namespace 'http://www.w3.org/2001/DOM-Test-Suite/Level-#{level}
         schema-location  'dom#{level}.xsd')
    end
  end
end