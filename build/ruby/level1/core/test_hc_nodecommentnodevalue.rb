
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2001-2003 World Wide Web Consortium,
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
#     The string returned by the "getNodeValue()" method for a 
#     Comment Node is the content of the comment.
#     
#     Retrieve the comment in the XML file and   
#     check the string returned by the "getNodeValue()" method. 
#     It should be equal to "This is comment number 1".
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-F68D080]
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-1728279322]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=248]
##
DOMTestCase('hc_nodecommentnodevalue') do

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
  def test_hc_nodecommentnodevalue
    doc = nil
    elementList = nil
    commentNode = nil
    commentName = nil
    commentValue = nil
    doc = load_document("hc_staff", false)
      elementList = doc.childNodes()
      indexid35959037 = 0
    while (indexid35959037 < elementList.length)
      commentNode = elementList.item(indexid35959037)
    commentName = commentNode.nodeName()
      
      if (equals("#comment", commentName))
        commentValue = commentNode.nodeValue()
      assert_equal(" This is comment number 1.", commentValue, "value")
            
         end
       indexid35959037 += 1
            end
      commentNode = doc.createComment(" This is a comment")
      commentValue = commentNode.nodeValue()
      assert_equal(" This is a comment", commentValue, "createdCommentNodeValue")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_nodecommentnodevalue"
  end
end

