
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001 World Wide Web Consortium, 
(Massachusetts Institute of Technology, Institut National de
Recherche en Informatique et en Automatique, Keio University).  All 
Rights Reserved.  This program is distributed under the W3C's Software
Intellectual Property License.  This program is distributed in the 
hope that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE.  

See W3C License http://www.w3.org/Consortium/Legal/ for more details.


=end
#

require 'helper'

###
#       The method setAttributeNS adds a new attribute and raises a INVALID_CHARACTER_ERR if 
#       the specified qualified name contains an illegal character.
#       Invoke the setAttributeNS method on this Element object with a valid value for 
#       namespaceURI, and qualifiedNames that contain illegal characters.  Check if the an
#       INVALID_CHARACTER_ERR was thrown.
 #     
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-ElSetAttrNS]
##
DOMTestCase('elementsetattributens04') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_elementsetattributens04
    doc = nil
    element = nil
    qualifiedName = nil
    qualifiedNames = []
      qualifiedNames << "/"
      qualifiedNames << "//"
      qualifiedNames << "\\"
      qualifiedNames << ";"
      qualifiedNames << "&"
      qualifiedNames << "*"
      qualifiedNames << "]]"
      qualifiedNames << ">"
      qualifiedNames << "<"
      
    doc = load_document("staffNS", true)
      element = doc.createElementNS("http://www.w3.org/DOM/Test/L2", "dom:elem")
      indexid36030274 = 0
    while (indexid36030274 < qualifiedNames.size())
      qualifiedName = qualifiedNames.get(indexid36030274)
    
    begin
      success = false;
      begin
        element.setAttributeNS("http://www.w3.org/DOM/Test/L2", qualifiedName, "test")
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INVALID_CHARACTER_ERR)
      end 
      assert(success, "elementsetattributens04")
    end
indexid36030274 += 1
            end
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/elementsetattributens04"
  end
end

