
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
# The "setNamedItem(arg)" method raises a
# INUSE_ATTRIBUTE_ERR DOMException if "arg" is an
# Attr that is already in an attribute of another Element.
# Create a NamedNodeMap object from the attributes of the
# last child of the third employee and attempt to add
# an attribute that is already being used by the first
# employee.  This should raise the desired exception.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-258A00AF')/constant[@name='INUSE_ATTRIBUTE_ERR'])]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1025163788]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-1025163788')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='INUSE_ATTRIBUTE_ERR'])]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=249]
##
DOMTestCase('hc_namednodemapinuseattributeerr') do

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
  def test_hc_namednodemapinuseattributeerr
    doc = nil
    elementList = nil
    firstNode = nil
    testNode = nil
    attributes = nil
    domesticAttr = nil
    setAttr = nil
    setNode = nil
    doc = load_document("hc_staff", true)
      elementList = doc.getElementsByTagName("acronym")
      firstNode = elementList.item(0)
      domesticAttr = doc.createAttribute("title")
      domesticAttr.value = "Yα"
      setAttr = firstNode.setAttributeNode(domesticAttr)
      elementList = doc.getElementsByTagName("acronym")
      testNode = elementList.item(2)
      attributes = testNode.attributes()
      
    begin
      success = false;
      begin
        setNode = attributes.setNamedItem(domesticAttr)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INUSE_ATTRIBUTE_ERR)
      end 
      assert(success, "throw_INUSE_ATTRIBUTE_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_namednodemapinuseattributeerr"
  end
end

