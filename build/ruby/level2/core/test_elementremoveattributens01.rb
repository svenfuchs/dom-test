
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
#       The method removeAttributeNS removes an attribute by local name and namespace URI.
#       Create a new element and add a new attribute node to it. 
#       Remove the attribute node using the removeAttributeNodeNS method.  
#       Check if the attribute was remove by invoking the hasAttributeNS
#       method on the element and check if it returns false.
 #     
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-ElRemAtNS]
##
DOMTestCase('elementremoveattributens01') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.namespaceAware
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

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
  def test_elementremoveattributens01
    doc = nil
    element = nil
    state = nil
    attribute = nil
    newAttribute = nil
    doc = load_document("staff", false)
      element = doc.createElementNS("http://www.w3.org/DOM", "elem")
      attribute = doc.createAttributeNS("http://www.w3.org/DOM/Test/createAttributeNS", "attr")
      newAttribute = element.setAttributeNodeNS(attribute)
      element.removeAttributeNS("http://www.w3.org/DOM/Test/createAttributeNS", "attr")
      state = element.hasAttributeNS("http://www.w3.org/DOM/Test/createAttributeNS", "attr")
      assertFalse("elementremoveattributens01", state)

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/elementremoveattributens01"
  end
end

