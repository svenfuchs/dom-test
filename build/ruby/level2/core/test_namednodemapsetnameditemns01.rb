
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
#  The method setNamedItemNS adds a node using its namespaceURI and localName. If a node with 
#  that namespace URI and that local name is already present in this map, it is replaced 
#  by the new one.
#  
#  Retreive the first element whose localName is address and namespaceURI http://www.nist.gov", 
#  and put its attributes into a named node map.  Create a new attribute node and add it to this map.  
#  Verify if the attr node was successfully added by checking the nodeName of the retreived atttribute.
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-getNamedItemNS]
##
DOMTestCase('namednodemapsetnameditemns01') do

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
  def test_namednodemapsetnameditemns01
    doc = nil
    attributes = nil
    element = nil
    attribute = nil
    newAttribute = nil
    newAttr1 = nil
    elementList = nil
    attrName = nil
    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagNameNS("http://www.nist.gov", "address")
      element = elementList.item(0)
      attributes = element.attributes()
      newAttr1 = doc.createAttributeNS("http://www.w3.org/DOM/L1", "streets")
      newAttribute = element.setAttributeNodeNS(newAttr1)
      attribute = attributes.getNamedItemNS("http://www.w3.org/DOM/L1", "streets")
      attrName = attribute.nodeName()
      assert_equal("streets", attrName, "namednodemapsetnameditemns01")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapsetnameditemns01"
  end
end

