
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
#     The width attribute specifies the frame width. 
#     Retrieve the width attribute of the first IFRAME element and examine
#     it's value.  
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-67133005]
##
DOMTestCase('HTMLIFrameElement10') do

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
    preload(contentType, "iframe", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLIFrameElement10
    nodeList = nil
    testNode = nil
    vwidth = nil
    doc = nil
    doc = load_document("iframe", false)
      nodeList = doc.getElementsByTagName("iframe")
      assertSize("Asize", 1, nodeList)
      testNode = nodeList.item(0)
      vwidth = testNode.width()
      assert_equal("60", vwidth, "widthLink")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLIFrameElement10"
  end
end

