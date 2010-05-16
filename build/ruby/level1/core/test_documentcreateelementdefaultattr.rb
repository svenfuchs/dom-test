
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
#     The "createElement(tagName)" method creates an Element 
#    of the type specified.  In addition, if there are known attributes
#    with default values, Attr nodes representing them are automatically
#    created and attached to the element.
#    Retrieve the entire DOM document and invoke its 
#    "createElement(tagName)" method with tagName="address".
#    The method should create an instance of an Element node
#    whose tagName is "address".  The tagName "address" has an 
#    attribute with default values, therefore the newly created element
#    will have them.  
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-2141741547]
# see[http://lists.w3.org/Archives/Public/www-dom-ts/2002Mar/0002.html]
##
DOMTestCase('documentcreateelementdefaultattr') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.validating
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

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
  def test_documentcreateelementdefaultattr
    doc = nil
    newElement = nil
    defaultAttr = nil
    child = nil
    name = nil
    value = nil
    doc = load_document("staff", true)
      newElement = doc.createElement("address")
      defaultAttr = newElement.attributes()
      child = defaultAttr.item(0)
      assert_not_nil(child, "defaultAttrNotNull")
      name = child.nodeName()
      assert_equal("street", name, "attrName")
            value = child.nodeValue()
      assert_equal("Yes", value, "attrValue")
            assertSize("attrCount", 1, defaultAttr)
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/documentcreateelementdefaultattr"
  end
end

