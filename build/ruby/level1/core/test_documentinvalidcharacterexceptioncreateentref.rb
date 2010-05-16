
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
#     The "createEntityReference(tagName)" method raises an
#    INVALID_CHARACTER_ERR DOMException if the specified
#    tagName contains an invalid character. 
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-258A00AF')/constant[@name='INVALID_CHARACTER_ERR'])]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-392B75AE]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-392B75AE')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='INVALID_CHARACTER_ERR'])]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=249]
##
DOMTestCase('documentinvalidcharacterexceptioncreateentref') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
        if (factory.hasFeature("XML", nil) != true)
         raise 'org.w3c.domts.DOMTestIncompatibleException.incompatibleFeature("XML", nil)'
      end

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
  def test_documentinvalidcharacterexceptioncreateentref
    doc = nil
    badEntityRef = nil
    doc = load_document("hc_staff", true)
      
      if (("text/html" == getContentType()))
        
    begin
      success = false;
      begin
        badEntityRef = doc.createEntityReference("foo")
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::NOT_SUPPORTED_ERR)
      end 
      assert(success, "throw_NOT_SUPPORTED_ERR")
    end

          else
            
    begin
      success = false;
      begin
        badEntityRef = doc.createEntityReference("invalid^Name")
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INVALID_CHARACTER_ERR)
      end 
      assert(success, "throw_INVALID_CHARACTER_ERR")
    end

         end
       
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/documentinvalidcharacterexceptioncreateentref"
  end
end

