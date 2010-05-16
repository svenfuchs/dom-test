
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
# Create an ent3 entity reference and call appendData on a text child, should thrown a NO_MODIFICATION_ALLOWED_ERR. 
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-258A00AF')/constant[@name='NO_MODIFICATION_ALLOWED_ERR'])]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-32791A2F]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#xpointer(id('ID-32791A2F')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='NO_MODIFICATION_ALLOWED_ERR'])]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-32791A2F]
# see[http://www.w3.org/2001/DOM-Test-Suite/level1/core/characterdataappenddatanomodificationallowederr.xml]
##
DOMTestCase('characterdataappenddatanomodificationallowederrEE') do

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
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_characterdataappenddatanomodificationallowederrEE
    doc = nil
    genderList = nil
    genderNode = nil
    entText = nil
    entReference = nil
    appendedChild = nil
    doc = load_document("staff", true)
      genderList = doc.getElementsByTagName("gender")
      genderNode = genderList.item(2)
      entReference = doc.createEntityReference("ent3")
      assert_not_nil(entReference, "createdEntRefNotNull")
      appendedChild = genderNode.appendChild(entReference)
      entText = entReference.firstChild()
      assert_not_nil(entText, "entTextNotNull")
      
    begin
      success = false;
      begin
        entText.appendData("newString")
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::NO_MODIFICATION_ALLOWED_ERR)
      end 
      assert(success, "throw_NO_MODIFICATION_ALLOWED_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/characterdataappenddatanomodificationallowederrEE"
  end
end

