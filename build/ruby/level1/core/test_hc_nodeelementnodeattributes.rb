
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
#     Retrieve the third "acronym" element and evaluate Node.attributes.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-84CF096]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=236]
# see[http://lists.w3.org/Archives/Public/www-dom-ts/2003Jun/0011.html]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=184]
##
DOMTestCase('hc_nodeelementnodeattributes') do

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
    preload(contentType, "hc_staff", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_hc_nodeelementnodeattributes
    doc = nil
    elementList = nil
    testAddr = nil
    addrAttr = nil
    attrNode = nil
    attrName = nil
    attrList = []
      
    htmlExpected = []
      htmlExpected << "title"
      htmlExpected << "class"
      
    expected = []
      expected << "title"
      expected << "class"
      expected << "dir"
      
    doc = load_document("hc_staff", false)
      elementList = doc.getElementsByTagName("acronym")
      testAddr = elementList.item(2)
      addrAttr = testAddr.attributes()
      indexid35832674 = 0
    while (indexid35832674 < addrAttr.length)
      attrNode = addrAttr.item(indexid35832674)
    attrName = attrNode.nodeName()
      attrList << attrName
      indexid35832674 += 1
            end
      
      if (("text/html" == getContentType()))
        assertEqualsIgnoreCase("attrNames_html", htmlExpected, attrList)

          else
            assert_equal(expected, attrList, "attrNames")
            
         end
       
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_nodeelementnodeattributes"
  end
end

