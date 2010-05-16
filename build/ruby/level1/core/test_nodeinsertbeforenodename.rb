
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2001 World Wide Web Consortium,
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
#     The "insertBefore(newChild,refchild)" method returns 
#     the node being inserted.
#     
#     Insert an Element node before the fourth
#     child of the second employee and check the node
#     returned from the "insertBefore(newChild,refChild)" 
#     method.   The node returned should be "newChild".
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-F68D095]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-952280727]
##
DOMTestCase('nodeinsertbeforenodename') do

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
  def test_nodeinsertbeforenodename
    doc = nil
    elementList = nil
    employeeNode = nil
    childList = nil
    refChild = nil
    newChild = nil
    insertedNode = nil
    childName = nil
    doc = load_document("staff", true)
      elementList = doc.getElementsByTagName("employee")
      employeeNode = elementList.item(1)
      childList = employeeNode.childNodes()
      refChild = childList.item(3)
      newChild = doc.createElement("newChild")
      insertedNode = employeeNode.insertBefore(newChild, refChild)
      childName = insertedNode.nodeName()
      assert_equal("newChild", childName, "nodeInsertBeforeNodeNameAssert1")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/nodeinsertbeforenodename"
  end
end

