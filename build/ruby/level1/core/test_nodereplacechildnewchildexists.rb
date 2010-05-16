
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
#     Retrieve the second employee and replace its TWELFTH 
#     child(address) with its SECOND child(employeeId).   After the
#     replacement the second child should now be the one that used   
#     to be at the third position and the TWELFTH child should be the
#     one that used to be at the SECOND position.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-785887307]
##
DOMTestCase('nodereplacechildnewchildexists') do

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
  def test_nodereplacechildnewchildexists
    doc = nil
    elementList = nil
    employeeNode = nil
    childList = nil
    oldChild = nil;

    newChild = nil;

    childName = nil
    childNode = nil
    length = nil
    actual = []
      
    expected = []
      
    expectedWithoutWhitespace = []
      expectedWithoutWhitespace << "name"
      expectedWithoutWhitespace << "position"
      expectedWithoutWhitespace << "salary"
      expectedWithoutWhitespace << "gender"
      expectedWithoutWhitespace << "employeeId"
      
    expectedWithWhitespace = []
      expectedWithWhitespace << "#text"
      expectedWithWhitespace << "#text"
      expectedWithWhitespace << "name"
      expectedWithWhitespace << "#text"
      expectedWithWhitespace << "position"
      expectedWithWhitespace << "#text"
      expectedWithWhitespace << "salary"
      expectedWithWhitespace << "#text"
      expectedWithWhitespace << "gender"
      expectedWithWhitespace << "#text"
      expectedWithWhitespace << "employeeId"
      expectedWithWhitespace << "#text"
      
    replacedChild = nil
    doc = load_document("staff", true)
      elementList = doc.getElementsByTagName("employee")
      employeeNode = elementList.item(1)
      childList = employeeNode.childNodes()
      length = childList.length()
      
      if (equals(13, length))
        newChild = childList.item(1)
      oldChild = childList.item(11)
      expected =  expectedWithWhitespace
          else
            newChild = childList.item(0)
      oldChild = childList.item(5)
      expected =  expectedWithoutWhitespace
         end
       replacedChild = employeeNode.replaceChild(newChild, oldChild)
      assertSame("return_value_same", oldChild, replacedChild)
indexid36035207 = 0
    while (indexid36035207 < childList.length)
      childNode = childList.item(indexid36035207)
    childName = childNode.nodeName()
      actual << childName
      indexid36035207 += 1
            end
      assert_equal(expected, actual, "childNames")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/nodereplacechildnewchildexists"
  end
end

