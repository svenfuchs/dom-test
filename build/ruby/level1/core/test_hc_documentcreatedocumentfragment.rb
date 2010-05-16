
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
#     The "createDocumentFragment()" method creates an empty 
#    DocumentFragment object.
#    Retrieve the entire DOM document and invoke its 
#    "createDocumentFragment()" method.  The content, name, 
#    type and value of the newly created object are output.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-35CB04B5]
##
DOMTestCase('hc_documentcreatedocumentfragment') do

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
  def test_hc_documentcreatedocumentfragment
    doc = nil
    newDocFragment = nil
    children = nil
    length = nil
    newDocFragmentName = nil
    newDocFragmentType = nil
    newDocFragmentValue = nil
    doc = load_document("hc_staff", true)
      newDocFragment = doc.createDocumentFragment()
      children = newDocFragment.childNodes()
      length = children.length()
      assert_equal(0, length, "length")
            newDocFragmentName = newDocFragment.nodeName()
      assert_equal("#document-fragment", newDocFragmentName, "strong")
            newDocFragmentType = newDocFragment.nodeType()
      assert_equal(11, newDocFragmentType, "type")
            newDocFragmentValue = newDocFragment.nodeValue()
      assert_nil(newDocFragmentValue, "value")
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_documentcreatedocumentfragment"
  end
end

