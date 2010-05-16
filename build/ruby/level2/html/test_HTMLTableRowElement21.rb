
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
#     The deleteCell() method deletes a cell from the currtent row.  If
#     the index is -1 the last cell in the row is deleted.
#     
#     Retrieve the fourth TR element and examine the value of
#     the cells length attribute which should be set to six.  
#     Check the value of the last TD element.  Invoke the
#     deleteCell() with an index of negative one
#     which will delete the last cell in the row. 
#     Check the value of the of the last cell 
#     and also the numbers of cells should now be five.
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/DOM-Level-2-HTML/html#ID-11738598]
##
DOMTestCase('HTMLTableRowElement21') do

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
    preload(contentType, "tablerow", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLTableRowElement21
    nodeList = nil
    cellsnodeList = nil
    testNode = nil
    trNode = nil
    cellNode = nil
    value = nil
    vcells = nil
    doc = nil
    doc = load_document("tablerow", true)
      nodeList = doc.getElementsByTagName("tr")
      assertSize("Asize", 5, nodeList)
      testNode = nodeList.item(3)
      cellsnodeList = testNode.cells()
      vcells = cellsnodeList.length()
      assert_equal(6, vcells, "cellsLink1")
            trNode = cellsnodeList.item(5)
      cellNode = trNode.firstChild()
      value = cellNode.nodeValue()
      assert_equal("1230 North Ave. Dallas, Texas 98551", value, "value1Link")
            testNode.deleteCell(-1)
      testNode = nodeList.item(3)
      cellsnodeList = testNode.cells()
      vcells = cellsnodeList.length()
      assert_equal(5, vcells, "cellsLink2")
            trNode = cellsnodeList.item(4)
      cellNode = trNode.firstChild()
      value = cellNode.nodeValue()
      assert_equal("Female", value, "value2Link")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLTableRowElement21"
  end
end
