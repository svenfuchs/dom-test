
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2001-2003 World Wide Web Consortium,
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
#     The "removeAttributeNode(oldAttr)" method removes the 
#    specified attribute. 
#    
#    Retrieve the last child of the third employee, add a
#    new "lang" attribute to it and then try to remove it. 
#    To verify that the node was removed use the
#    "getNamedItem(name)" method from the NamedNodeMap
#    interface.  It also uses the "getAttributes()" method
#    from the Node interface.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-D589198]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=243]
##
DOMTestCase('hc_elementremoveattributeaftercreate') do

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
    preload(contentType, "hc_staff", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_hc_elementremoveattributeaftercreate
    doc = nil
    elementList = nil
    testEmployee = nil
    newAttribute = nil
    attributes = nil
    districtAttr = nil
    doc = load_document("hc_staff", true)
      elementList = doc.getElementsByTagName("acronym")
      testEmployee = elementList.item(2)
      newAttribute = doc.createAttribute("lang")
      districtAttr = testEmployee.setAttributeNode(newAttribute)
      districtAttr = testEmployee.removeAttributeNode(newAttribute)
      attributes = testEmployee.attributes()
      districtAttr = attributes.getNamedItem("lang")
      assert_nil(districtAttr, "removed_item_null")
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_elementremoveattributeaftercreate"
  end
end

