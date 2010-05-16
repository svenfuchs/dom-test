
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
#     The "setAttributeNodeNS(newAttr)" adds a new attribute.
#    If an attribute with that local name and that namespaceURI is already
#    present in the element, it is replaced by the new one.
#    
#    Retrieve the first emp:address element and add a new attribute
#    to the element.  Since an attribute with the same local name
#    and namespaceURI already exists, it is replaced by the new one and
#    returns the replaced "Attr" node.
#    This test uses the "createAttributeNS(namespaceURI,localName)
#    method from the Document interface to create the new attribute to add.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-F68D095]
##
DOMTestCase('setAttributeNodeNS04') do

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
  def test_setAttributeNodeNS04
    doc = nil
    elementList = nil
    testAddr = nil
    newAttr = nil
    newAddrAttr = nil
    newName = nil
    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagName("emp:address")
      testAddr = elementList.item(0)
      assert_not_nil(testAddr, "empAddrNotNull")
      newAttr = doc.createAttributeNS("http://www.nist.gov", "xxx:domestic")
      newAddrAttr = testAddr.setAttributeNodeNS(newAttr)
      newName = newAddrAttr.nodeName()
      assert_equal("emp:domestic", newName, "nodeName")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/setAttributeNodeNS04"
  end
end

