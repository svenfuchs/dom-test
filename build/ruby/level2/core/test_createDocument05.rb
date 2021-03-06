
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
#     The "createDocument(namespaceURI,qualifiedName,doctype)" method for a 
#    DOMImplementation should raise INVALID_CHARACTER_ERR DOMException
#    if parameter qualifiedName contains an illegal character.
#    
#    Invoke method createDocument(namespaceURI,qualifiedName,doctype) on
#    this domimplementation with namespaceURI equals "http://www.ecommerce.org/schema",
#    doctype is null and qualifiedName contains an illegal character from
#    illegalChars[].  Method should raise INVALID_CHARACTER_ERR DOMException
#    for all characters in illegalChars[].
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#]
##
DOMTestCase('createDocument05') do

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
  def test_createDocument05
    namespaceURI = "http://www.ecommerce.org/schema";
    qualifiedName = nil
    doc = nil
    docType = nil;

    domImpl = nil
    aNewDoc = nil
    charact = nil
    illegalQNames = []
      illegalQNames << "namespaceURI:{"
      illegalQNames << "namespaceURI:}"
      illegalQNames << "namespaceURI:~"
      illegalQNames << "namespaceURI:'"
      illegalQNames << "namespaceURI:!"
      illegalQNames << "namespaceURI:@"
      illegalQNames << "namespaceURI:#"
      illegalQNames << "namespaceURI:$"
      illegalQNames << "namespaceURI:%"
      illegalQNames << "namespaceURI:^"
      illegalQNames << "namespaceURI:&"
      illegalQNames << "namespaceURI:*"
      illegalQNames << "namespaceURI:("
      illegalQNames << "namespaceURI:)"
      illegalQNames << "namespaceURI:+"
      illegalQNames << "namespaceURI:="
      illegalQNames << "namespaceURI:["
      illegalQNames << "namespaceURI:]"
      illegalQNames << "namespaceURI:\\"
      illegalQNames << "namespaceURI:/"
      illegalQNames << "namespaceURI:;"
      illegalQNames << "namespaceURI:`"
      illegalQNames << "namespaceURI:<"
      illegalQNames << "namespaceURI:>"
      illegalQNames << "namespaceURI:,"
      illegalQNames << "namespaceURI:a "
      illegalQNames << "namespaceURI:\""
      
    doc = load_document("staffNS", false)
      indexid36030162 = 0
    while (indexid36030162 < illegalQNames.size())
      qualifiedName = illegalQNames.get(indexid36030162)
    domImpl = doc.getImplementation()
      
    begin
      success = false;
      begin
        aNewDoc = domImpl.createDocument(namespaceURI, qualifiedName, docType)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INVALID_CHARACTER_ERR)
      end 
      assert(success, "throw_INVALID_CHARACTER_ERR")
    end
indexid36030162 += 1
            end
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/createDocument05"
  end
end

