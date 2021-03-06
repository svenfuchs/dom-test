
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
#     The "getNamedItem(name)" method returns null of the 
#    specified name did not identify any node in the map. 
#    
#    Retrieve the second employee and create a NamedNodeMap 
#    listing of the attributes of the last child.  Once the
#    list is created an invocation of the "getNamedItem(name)"
#    method is done with name="district".  This name does not 
#    match any names in the list therefore the method should
#    return null.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1074577549]
##
DOMTestCase('namednodemapreturnnull') do

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
  def test_namednodemapreturnnull
    doc = nil
    elementList = nil
    testEmployee = nil
    attributes = nil
    districtNode = nil
    doc = load_document("staff", false)
      elementList = doc.getElementsByTagName("address")
      testEmployee = elementList.item(1)
      attributes = testEmployee.attributes()
      districtNode = attributes.getNamedItem("district")
      assert_nil(districtNode, "namednodemapReturnNullAssert")
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapreturnnull"
  end
end

