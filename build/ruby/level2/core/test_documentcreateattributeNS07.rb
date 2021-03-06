
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
#  The method createAttributeNS raises a NAMESPACE_ERR if the qualifiedName is xmlns and 
#  the namespaceURI is different from http://www.w3.org/2000/xmlns
#  
#  Invoke the createAttributeNS method on this DOMImplementation object with  
#  the qualifiedName as xmlns and namespaceURI as http://www.W3.org/2000/xmlns.  
#  Check if the NAMESPACE_ERR exception is thrown.
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-DocCrAttrNS]
##
DOMTestCase('documentcreateattributeNS07') do

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
    preload(contentType, "staffNS", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_documentcreateattributeNS07
    doc = nil
    attribute = nil
    namespaceURI = "http://www.W3.org/2000/xmlns";
    qualifiedName = "xmlns";
    doc = load_document("staffNS", false)
      
    begin
      success = false;
      begin
        attribute = doc.createAttributeNS(namespaceURI, qualifiedName)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::NAMESPACE_ERR)
      end 
      assert(success, "documentcreateattributeNS07")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/documentcreateattributeNS07"
  end
end

