
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2004 World Wide Web Consortium, 
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
#  The method setNamedItemNS adds a node using its namespaceURI and localName and 
#  raises a WRONG_DOCUMENT_ERR if arg was created from a different document than the 
#  one that created this map.
#  
#  Retreieve the second element whose local name is address and its attribute into a named node map.
#  Create a new document and a new attribute node in it.  Call the setNamedItemNS using the first 
#  namedNodeMap and the new attribute node attribute of the new document.  This should
#  raise a WRONG_DOCUMENT_ERR. 
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-setNamedItemNS]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=259]
##
DOMTestCase('namednodemapsetnameditemns04') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.namespaceAware
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

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
  def test_namednodemapsetnameditemns04
    doc = nil
    domImpl = nil
    docAlt = nil
    docType = nil;

    attributes = nil
    elementList = nil
    element = nil
    attrAlt = nil
    newNode = nil
    nullNS = nil;

    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagNameNS("*", "address")
      element = elementList.item(1)
      attributes = element.attributes()
      domImpl = doc.getImplementation()
      docAlt = domImpl.createDocument(nullNS, "newDoc", docType)
      attrAlt = docAlt.createAttributeNS(nullNS, "street")
      
    begin
      success = false;
      begin
        newNode = attributes.setNamedItemNS(attrAlt)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::WRONG_DOCUMENT_ERR)
      end 
      assert(success, "throw_WRONG_DOCUMENT_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapsetnameditemns04"
  end
end

