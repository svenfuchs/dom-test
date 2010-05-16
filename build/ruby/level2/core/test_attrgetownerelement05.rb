
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2003 World Wide Web Consortium, 
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
#   The "getOwnerElement()" will return the Element node this attribute is attached to 
#   or null if this attribute is not in use.  
#   
#   Retreive an element and its attributes.  Then remove the element and check the name of 
#   the ownerElement of attribute of the attribute "street".  
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#Attr-ownerElement]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=259]
##
DOMTestCase('attrgetownerelement05') do

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
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_attrgetownerelement05
    doc = nil
    element = nil
    ownerElement = nil
    parentElement = nil
    elementList = nil
    ownerElementName = nil
    attr = nil
    removedChild = nil
    nodeMap = nil
    nullNS = nil;

    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagNameNS("*", "address")
      element = elementList.item(1)
      parentElement = element.parentNode()
      nodeMap = element.attributes()
      removedChild = parentElement.removeChild(element)
      attr = nodeMap.getNamedItemNS(nullNS, "street")
      ownerElement = attr.ownerElement()
      ownerElementName = ownerElement.nodeName()
      assert_equal("address", ownerElementName, "attrgetownerelement05")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/attrgetownerelement05"
  end
end

