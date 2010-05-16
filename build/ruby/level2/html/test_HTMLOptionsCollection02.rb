
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
#     An HTMLOptionsCollection is a list of nodes representing HTML option
#     element.
#     An individual node may be accessed by either ordinal index, the node's
#     name or id attributes.  (Test ordinal index=3).
#     The item() method retrieves a node specified by ordinal index.
#     Nodes are numbered in tree order.  The index origin is 0.
#     Retrieve the first SELECT element.  Create a HTMLOptionsCollection.
#     Retrieve the fourth item in the list and examine its firstChild's
#     nodeValue. 
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/DOM-Level-2-HTML/html#HTMLOptionsCollection-item]
##
DOMTestCase('HTMLOptionsCollection02') do

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
    preload(contentType, "optionscollection", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLOptionsCollection02
    nodeList = nil
    testNode = nil
    optionsNode = nil
    optionsValueNode = nil
    optionsList = nil
    vvalue = nil
    doc = nil
    doc = load_document("optionscollection", false)
      nodeList = doc.getElementsByTagName("select")
      assertSize("Asize", 2, nodeList)
      testNode = nodeList.item(0)
      optionsList = testNode.options()
      optionsNode = optionsList.item(3)
      optionsValueNode = optionsNode.firstChild()
      vvalue = optionsValueNode.nodeValue()
      assert_equal("EMP10004", vvalue, "valueIndexLink")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLOptionsCollection02"
  end
end

