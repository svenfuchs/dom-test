
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2001-2004 World Wide Web Consortium,
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
# An Entity is accessed, setNodeValue is called with a non-null argument, but getNodeValue
# should still return null.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-F68D080]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-527DCFF2]
##
DOMTestCase('hc_nodevalue07') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
        if (factory.hasFeature("XML", nil) != true)
         raise 'org.w3c.domts.DOMTestIncompatibleException.incompatibleFeature("XML", nil)'
      end

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
  def test_hc_nodevalue07
    doc = nil
    newNode = nil
    newValue = nil
    nodeMap = nil
    docType = nil
    doc = load_document("hc_staff", true)
      docType = doc.doctype()
      
      if (
    !(("text/html" == getContentType()))
)
        assert_not_nil(docType, "docTypeNotNull")
      nodeMap = docType.entities()
      assert_not_nil(nodeMap, "entitiesNotNull")
      newNode = nodeMap.getNamedItem("alpha")
      assert_not_nil(newNode, "entityNotNull")
      newValue = newNode.nodeValue()
      assert_nil(newValue, "initiallyNull")
      newNode.nodeValue = "This should have no effect"
      newValue = newNode.nodeValue()
      assert_nil(newValue, "nullAfterAttemptedChange")
      
         end
       
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_nodevalue07"
  end
end

