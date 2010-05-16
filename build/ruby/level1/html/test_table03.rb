
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2004 World Wide Web Consortium, 
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
# Alignment character for cells in a column.
# The value of attribute ch of the tablesection element is read and checked against the expected value.
# @author Netscape
# @author Sivakiran Tummala
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-9530944]
##
DOMTestCase('table03') do

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
    preload(contentType, "tablesection", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_table03
    nodeList = nil
    testNode = nil
    vsection = nil
    vch = nil
    doc = nil
    doc = load_document("tablesection", false)
      nodeList = doc.getElementsByTagName("table")
      assertSize("Asize", 2, nodeList)
      testNode = nodeList.item(1)
      vsection = testNode.tHead()
      vch = vsection.ch()
      assert_equal("*", vch, "chLink")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/table03"
  end
end

