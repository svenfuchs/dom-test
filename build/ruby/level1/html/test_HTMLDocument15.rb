
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
#     The getElementById method returns the Element whose id is given by
#     elementId.  If no such element exists, returns null.  
#     Retrieve the element whose id is "mapid".
#     Check the value of the element.
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-36113835]
# see[http://www.w3.org/TR/DOM-Level-2-HTML/html#ID-26809268]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-getElBId]
##
DOMTestCase('HTMLDocument15') do

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
    preload(contentType, "document", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLDocument15
    elementNode = nil
    elementValue = nil
    doc = nil
    doc = load_document("document", false)
      elementNode = doc.getElementById("mapid")
      elementValue = elementNode.nodeName()
      assertEqualsAutoCase("element", "elementId", "map", elementValue)
        
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLDocument15"
  end
end

