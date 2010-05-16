
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
#     After the "splitText(offset)" method breaks the Text node
#     into two Text nodes, the new Text node contains all the
#     content at and after the offset point.
#     
#     Retrieve the textual data from the second child of the 
#     third employee and invoke the "splitText(offset)" method.
#     The new Text node should contain all the content
#     at and after the offset point.   The "getNodeValue()"
#     method is called to check that the new node now contains
#     the characters at and after position seven.
#     (Starting count at 0)
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-38853C1D]
##
DOMTestCase('hc_textsplittextthree') do

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
  def test_hc_textsplittextthree
    doc = nil
    elementList = nil
    nameNode = nil
    textNode = nil
    splitNode = nil
    value = nil
    doc = load_document("hc_staff", true)
      elementList = doc.getElementsByTagName("strong")
      nameNode = elementList.item(2)
      textNode = nameNode.firstChild()
      splitNode = textNode.splitText(6)
      value = splitNode.nodeValue()
      assert_equal(" Jones", value, "textSplitTextThreeAssert")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_textsplittextthree"
  end
end

