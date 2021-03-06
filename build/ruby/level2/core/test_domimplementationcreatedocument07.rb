
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
#  The createDocument method should raise a NAMESPACE_ERR if the qualifiedName is malformed 
#      
#  Invoke the createDocument method on this DOMImplementation object with null values
#  for namespaceURI and docType and a malformed qualifiedName.  
#  The NAMESPACE_ERR should be raised. 
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#Level-2-Core-DOM-createDocument]
##
DOMTestCase('domimplementationcreatedocument07') do

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
  def test_domimplementationcreatedocument07
    doc = nil
    domImpl = nil
    newDoc = nil
    namespaceURI = "http://www.w3.org/DOMTest/level2";
    docType = nil;

    doc = load_document("staffNS", false)
      domImpl = doc.getImplementation()
      
    begin
      success = false;
      begin
        newDoc = domImpl.createDocument(namespaceURI, ":", docType)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::NAMESPACE_ERR)
      end 
      assert(success, "domimplementationcreatedocument07")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/domimplementationcreatedocument07"
  end
end

