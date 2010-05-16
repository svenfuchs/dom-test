
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
#     The "createTextNode(data)" method creates a Text node 
#    given the specfied string.
#    Retrieve the entire DOM document and invoke its 
#    "createTextNode(data)" method.  It should create a 
#    new Text node whose "data" is the specified string.
#    The NodeName and NodeType are also checked.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1975348127]
##
DOMTestCase('documentcreatetextnode') do

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
    preload(contentType, "staff", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_documentcreatetextnode
    doc = nil
    newTextNode = nil
    newTextName = nil
    newTextValue = nil
    newTextType = nil
    doc = load_document("staff", true)
      newTextNode = doc.createTextNode("This is a new Text node")
      newTextValue = newTextNode.nodeValue()
      assert_equal("This is a new Text node", newTextValue, "value")
            newTextName = newTextNode.nodeName()
      assert_equal("#text", newTextName, "name")
            newTextType = newTextNode.nodeType()
      assert_equal(3, newTextType, "type")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/documentcreatetextnode"
  end
end

