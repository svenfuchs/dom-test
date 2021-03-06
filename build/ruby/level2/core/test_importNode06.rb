
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
#     The "importNode(importedNode,deep)" method for a 
#    Document should import the given importedNode into that Document.
#    The importedNode is of type Element.
#    
#    Retrieve element "emp:address" from staffNS.xml document.
#    Invoke method importNode(importedNode,deep) on this document
#    with importedNode being the element from above and deep is true.
#    Method should return an element node whose name matches "emp:address" and
#    whose descendant is imported.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#Core-Document-importNode]
##
DOMTestCase('importNode06') do

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
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_importNode06
    doc = nil
    aNewDoc = nil
    element = nil
    aNode = nil
    hasChild = nil
    name = nil
    child = nil
    value = nil
    addresses = nil
    doc = load_document("staffNS", true)
      aNewDoc = load_document("staffNS", true)
      addresses = aNewDoc.getElementsByTagName("emp:address")
      element = addresses.item(0)
      assert_not_nil(element, "empAddressNotNull")
      aNode = doc.importNode(element, true)
      hasChild = aNode.hasChildNodes()
      assertTrue("throw_True", hasChild)
      name = aNode.nodeName()
      assert_equal("emp:address", name, "nodeName")
            child = aNode.firstChild()
      value = child.nodeValue()
      assert_equal("27 South Road. Dallas, texas 98556", value, "nodeValue")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/importNode06"
  end
end

