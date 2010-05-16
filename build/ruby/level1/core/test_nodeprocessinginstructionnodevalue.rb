
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
#     The string returned by the "getNodeValue()" method for a 
#     Processing Instruction Node is the content of the
#     Processing Instruction(exclude the target).
#     
#     Retrieve the Processing Instruction node in the XML file 
#     and check the string returned by the "getNodeValue()" 
#     method.   It should be equal to "PIDATA".
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-F68D080]
##
DOMTestCase('nodeprocessinginstructionnodevalue') do

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
  def test_nodeprocessinginstructionnodevalue
    doc = nil
    testList = nil
    piNode = nil
    piValue = nil
    doc = load_document("staff", false)
      testList = doc.childNodes()
      piNode = testList.item(0)
      piValue = piNode.nodeValue()
      assert_equal("PIDATA", piValue, "value")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/nodeprocessinginstructionnodevalue"
  end
end

