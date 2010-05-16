
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2001 World Wide Web Consortium,
(Massachusetts Institute of Technology, Institut National de
Recherche en Informatique et en Automatique, Keio University). All
Rights Reserved. This program is distributed under the W3C's Software
Intellectual Property License. This program is distributed in the
hope that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE.
See W3C License http://www.w3.org/Consortium/Legal/ for more details.

=end
#

require 'helper'

###
#     The "getNamedItem(name)" method returns a node of any 
#    type specified by name. 
#    
#    Retrieve the second employee and create a NamedNodeMap 
#    listing of the attributes of the last child.  Once the
#    list is created an invocation of the "getNamedItem(name)"
#    method is done with name="street".  This should result
#    in the method returning an Attr node.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1074577549]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-84CF096]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-637646024]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1112119403]
##
DOMTestCase('namednodemapreturnattrnode') do

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
    preload(contentType, "staff", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_namednodemapreturnattrnode
    doc = nil
    elementList = nil
    testEmployee = nil
    attributes = nil
    streetAttr = nil
    attrName = nil
    doc = load_document("staff", false)
      elementList = doc.getElementsByTagName("address")
      testEmployee = elementList.item(1)
      attributes = testEmployee.attributes()
      streetAttr = attributes.getNamedItem("street")
      assertInstanceOf("typeAssert", Attr.class, streetAttr)
attrName = streetAttr.nodeName()
      assert_equal("street", attrName, "nodeName")
            attrName = streetAttr.name()
      assert_equal("street", attrName, "attrName")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapreturnattrnode"
  end
end

