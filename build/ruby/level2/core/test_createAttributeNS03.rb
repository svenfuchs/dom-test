
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
#     The "createAttributeNS(namespaceURI,qualifiedName)" method for a 
#    Document should raise INVALID_CHARACTER_ERR DOMException
#    if qualifiedName contains an illegal character.
#    
#    Invoke method createAttributeNS(namespaceURI,qualifiedName) on this document
#    with qualifiedName containing an illegal character from illegalChars[].
#    Method should raise INVALID_CHARACTER_ERR DOMException for all
#    characters in illegalChars[].
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-DocCrAttrNS]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-DocCrAttrNS')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='INVALID_CHARACTER_ERR'])]
##
DOMTestCase('createAttributeNS03') do

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
    preload(contentType, "staffNS", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_createAttributeNS03
    namespaceURI = "http://www.wedding.com/";
    qualifiedName = nil
    doc = nil
    newAttr = nil
    illegalQNames = []
      illegalQNames << "person:{"
      illegalQNames << "person:}"
      illegalQNames << "person:~"
      illegalQNames << "person:'"
      illegalQNames << "person:!"
      illegalQNames << "person:@"
      illegalQNames << "person:#"
      illegalQNames << "person:$"
      illegalQNames << "person:%"
      illegalQNames << "person:^"
      illegalQNames << "person:&"
      illegalQNames << "person:*"
      illegalQNames << "person:("
      illegalQNames << "person:)"
      illegalQNames << "person:+"
      illegalQNames << "person:="
      illegalQNames << "person:["
      illegalQNames << "person:]"
      illegalQNames << "person:\\"
      illegalQNames << "person:/"
      illegalQNames << "person:;"
      illegalQNames << "person:`"
      illegalQNames << "person:<"
      illegalQNames << "person:>"
      illegalQNames << "person:,"
      illegalQNames << "person:a "
      illegalQNames << "person:\""
      
    doc = load_document("staffNS", false)
      indexid35971391 = 0
    while (indexid35971391 < illegalQNames.size())
      qualifiedName = illegalQNames.get(indexid35971391)
    
    begin
      success = false;
      begin
        newAttr = doc.createAttributeNS(namespaceURI, qualifiedName)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INVALID_CHARACTER_ERR)
      end 
      assert(success, "throw_INVALID_CHARACTER_ERR")
    end
indexid35971391 += 1
            end
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/createAttributeNS03"
  end
end

