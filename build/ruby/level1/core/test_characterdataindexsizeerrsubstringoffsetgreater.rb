
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
#     The "substringData(offset,count)" method raises an
#    INDEX_SIZE_ERR DOMException if the specified offset
#    is greater than the number of characters in the string.
#    
#    Retrieve the character data of the last child of the
#    first employee and invoke its "substringData(offset,count)
#    method with offset=40 and count=3.  It should raise the
#    desired exception since the offsets value is greater
#    than the length.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-258A00AF')/constant[@name='INDEX_SIZE_ERR'])]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-6531BCCF]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-6531BCCF')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='INDEX_SIZE_ERR'])]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=249]
##
DOMTestCase('characterdataindexsizeerrsubstringoffsetgreater') do

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
    preload(contentType, "staff", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_characterdataindexsizeerrsubstringoffsetgreater
    doc = nil
    elementList = nil
    nameNode = nil
    child = nil
    badString = nil
    doc = load_document("staff", false)
      elementList = doc.getElementsByTagName("address")
      nameNode = elementList.item(0)
      child = nameNode.firstChild()
      
    begin
      success = false;
      begin
        badString = child.substringData(40, 3)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INDEX_SIZE_ERR)
      end 
      assert(success, "throw_INDEX_SIZE_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/characterdataindexsizeerrsubstringoffsetgreater"
  end
end

