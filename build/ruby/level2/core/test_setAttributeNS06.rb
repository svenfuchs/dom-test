
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
#     The "setAttributeNS(namespaceURI,localName,value)" method raises a 
#    NAMESPACE_ERR DOMException if the "qualifiedName" has a
#    prefix of "xml" and the namespaceURI is different from
#    http://www.w3.org/XML/1998/namespace.
#    
#    Attempt to add an attribute with a prefix of "xml" as the on the first employee node.
#    An exception should be raised since the namespaceURI of this node is not 
#    http://www.w3.org/XML/1998/namespace.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-258A00AF')/constant[@name='NAMESPACE_ERR'])]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-ElSetAttrNS]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-ElSetAttrNS')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='NAMESPACE_ERR'])]
##
DOMTestCase('setAttributeNS06') do

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
  def test_setAttributeNS06
    namespaceURI = "http://www.nist.gov";
    qualifiedName = "xml:qualifiedName";
    doc = nil
    elementList = nil
    testAddr = nil
    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagName("employee")
      testAddr = elementList.item(0)
      
    begin
      success = false;
      begin
        testAddr.setAttributeNS(namespaceURI, qualifiedName, "newValue")
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::NAMESPACE_ERR)
      end 
      assert(success, "throw_NAMESPACE_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/setAttributeNS06"
  end
end

