
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
#     
#     The "getChildNodes()" method returns a NodeList
#     that contains all children of this node. 
#     
#     Retrieve the second employee and check the NodeList
#     returned by the "getChildNodes()" method.   The
#     length of the list should be 13.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1451460987]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=246]
##
DOMTestCase('hc_nodechildnodes') do

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
    preload(contentType, "hc_staff", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_hc_nodechildnodes
    doc = nil
    elementList = nil
    employeeNode = nil
    childNode = nil
    childNodes = nil
    nodeType = nil
    childName = nil
    actual = []
      
    expected = []
      expected << "em"
      expected << "strong"
      expected << "code"
      expected << "sup"
      expected << "var"
      expected << "acronym"
      
    doc = load_document("hc_staff", false)
      elementList = doc.getElementsByTagName("p")
      employeeNode = elementList.item(1)
      childNodes = employeeNode.childNodes()
      indexid36033107 = 0
    while (indexid36033107 < childNodes.length)
      childNode = childNodes.item(indexid36033107)
    nodeType = childNode.nodeType()
      childName = childNode.nodeName()
      
      if (equals(1, nodeType))
        actual << childName
      
          else
            assert_equal(3, nodeType, "textNodeType")
            
         end
       indexid36033107 += 1
            end
      assertEqualsAutoCase("element", "elementNames", expected, actual)
        
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_nodechildnodes"
  end
end

