
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
# Evaluate Node.ownerDocument on the second "p" element.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#node-ownerDoc]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=251]
##
DOMTestCase('hc_nodegetownerdocument') do

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
  def test_hc_nodegetownerdocument
    doc = nil
    elementList = nil
    docNode = nil
    ownerDocument = nil
    docElement = nil
    elementName = nil
    doc = load_document("hc_staff", false)
      elementList = doc.getElementsByTagName("p")
      docNode = elementList.item(1)
      ownerDocument = docNode.ownerDocument()
      docElement = ownerDocument.documentElement()
      elementName = docElement.nodeName()
      
      if (("image/svg+xml" == getContentType()))
        assert_equal("svg", elementName, "svgNodeName")
            
          else
            assertEqualsAutoCase("element", "ownerDocElemTagName", "html", elementName)
        
         end
       
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hc_nodegetownerdocument"
  end
end
