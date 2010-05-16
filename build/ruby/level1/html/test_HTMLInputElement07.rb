
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
#     The alt attribute alternates text for user agents not rendering the
#     normal content of this element.
#     Retrieve the alt attribute of the 1st INPUT element and examine
#     its value.  
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-92701314]
##
DOMTestCase('HTMLInputElement07') do

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
    preload(contentType, "input", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLInputElement07
    nodeList = nil
    testNode = nil
    valt = nil
    doc = nil
    doc = load_document("input", false)
      nodeList = doc.getElementsByTagName("input")
      assertSize("Asize", 9, nodeList)
      testNode = nodeList.item(0)
      valt = testNode.alt()
      assert_equal("Password entry", valt, "altLink")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLInputElement07"
  end
end

