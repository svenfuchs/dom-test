
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
#     The deleteRow() method throws a INDEX_SIZE_ERR DOMException
#     if the specified index is greater than the number of rows.
#  
#     Retrieve the first THEAD element which has one row.  Try
#     to delete a row using an index of two.  This should throw
#     a INDEX_SIZE_ERR DOMException since the index is greater than the
#     number of rows.
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/DOM-Level-2-HTML/html#ID-5625626]
# see[http://www.w3.org/TR/DOM-Level-2-HTML/html#xpointer(id('ID-5625626')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='INDEX_SIZE_ERR'])]
##
DOMTestCase('HTMLTableSectionElement27') do

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
    preload(contentType, "tablesection", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLTableSectionElement27
    nodeList = nil
    testNode = nil
    doc = nil
    doc = load_document("tablesection", true)
      nodeList = doc.getElementsByTagName("thead")
      assertSize("Asize", 1, nodeList)
      testNode = nodeList.item(0)
      
    begin
      success = false;
      begin
        testNode.deleteRow(2)
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INDEX_SIZE_ERR)
      end 
      assert(success, "HTMLTableSectionElement27")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLTableSectionElement27"
  end
end

