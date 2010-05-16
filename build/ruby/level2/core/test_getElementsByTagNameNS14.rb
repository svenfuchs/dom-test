
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
#     The "getElementsByTagNameNS(namespaceURI,localName)" method returns a NodeList
#    of all descendant Elements with a given local name and namespace URI in the
#    order in which they are encountered in a preorder traversal of this Element tree.
#    
#    Create a NodeList of all the descendant elements
#    using the string "http://www.nist.gov" as the namespaceURI and "address" as the 
#    localName.
#    The method should return a NodeList whose length is
#    "3".  
# @author Curt Arnold
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-1938918D]
##
DOMTestCase('getElementsByTagNameNS14') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.namespaceAware
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "staffNS", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_getElementsByTagNameNS14
    doc = nil
    docElem = nil
    elementList = nil
    doc = load_document("staffNS", false)
      docElem = doc.documentElement()
      elementList = docElem.getElementsByTagNameNS("http://www.nist.gov", "address")
      assertSize("addresses", 3, elementList)
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/getElementsByTagNameNS14"
  end
end

