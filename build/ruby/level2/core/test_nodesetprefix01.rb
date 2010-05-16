
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
#  The method setPrefix sets the namespace prefix of this node.  Note that setting this attribute, 
#  when permitted, changes the nodeName attribute, which holds the qualified name, as well as the 
#  tagName and name attributes of the Element and Attr interfaces, when applicable.
#  
#  Create a new element node with a namespace prefix.  Add it to a new DocumentFragment Node without
#  a prefix.  Call setPrefix on the elemen node.  Check if the prefix was set correctly on the element.
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-NodeNSPrefix]
##
DOMTestCase('nodesetprefix01') do

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
    preload(contentType, "staff", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_nodesetprefix01
    doc = nil
    docFragment = nil
    element = nil
    elementTagName = nil
    elementNodeName = nil
    appendedChild = nil
    doc = load_document("staff", true)
      docFragment = doc.createDocumentFragment()
      element = doc.createElementNS("http://www.w3.org/DOM/Test", "emp:address")
      appendedChild = docFragment.appendChild(element)
      element.prefix = "dmstc"
      elementTagName = element.tagName()
      elementNodeName = element.nodeName()
      assert_equal("dmstc:address", elementTagName, "nodesetprefix01_tagname")
            assert_equal("dmstc:address", elementNodeName, "nodesetprefix01_nodeName")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/nodesetprefix01"
  end
end
