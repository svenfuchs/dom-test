
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
#     The "hasChildNodes()" method returns false if the node
#     does not have any children.
#     
#     Retrieve the text of the first "em" element and invoke the "hasChildNodes()" method.   It
#     should return false.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1451460987]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-810594187]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=246]
##
DOMTestCase('hc_nodehaschildnodesfalse') do

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
  def test_hc_nodehaschildnodesfalse
    doc = nil
    emList = nil
    emNode = nil
    emText = nil
    hasChild = nil
    doc = load_document("hc_staff", false)
      emList = doc.getElementsByTagName("em")
      emNode = emList.item(0)
      emText = emNode.firstChild()
      hasChild = emText.hasChildNodes()
      assertFalse("hasChild", hasChild)

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_nodehaschildnodesfalse"
  end
end
