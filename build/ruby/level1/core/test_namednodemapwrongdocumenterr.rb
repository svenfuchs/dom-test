
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
#     The "setNamedItem(arg)" method raises a 
#    WRONG_DOCUMENT_ERR DOMException if "arg" was created
#    from a different document than the one that created
#    the NamedNodeMap. 
#    
#    Create a NamedNodeMap object from the attributes of the
#    last child of the third employee and attempt to add
#    another Attr node to it that was created from a 
#    different DOM document.  This should raise the desired
#    exception.  This method uses the "createAttribute(name)"
#    method from the Document interface.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-258A00AF')/constant[@name='WRONG_DOCUMENT_ERR'])]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1025163788]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-1025163788')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='WRONG_DOCUMENT_ERR'])]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=249]
##
DOMTestCase('namednodemapwrongdocumenterr') do

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
    preload(contentType, "staff", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_namednodemapwrongdocumenterr
    doc1 = nil
    doc2 = nil
    elementList = nil
    testAddress = nil
    attributes = nil
    newAttribute = nil
    setNode = nil
    doc1 = load_document("staff", true)
      doc2 = load_document("staff", true)
      elementList = doc1.getElementsByTagName("address")
      testAddress = elementList.item(2)
      newAttribute = doc2.createAttribute("newAttribute")
      attributes = testAddress.attributes()
      
    begin
      success = false;
      begin
        setNode = attributes.setNamedItem(newAttribute)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::WRONG_DOCUMENT_ERR)
      end 
      assert(success, "throw_WRONG_DOCUMENT_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapwrongdocumenterr"
  end
end

