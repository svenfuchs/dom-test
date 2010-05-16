
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
#     The selectedIndex attribute specifies the ordinal index of the selected  
#     option.  If no element is selected -1 is returned.
#     Retrieve the selectedIndex attribute from the second SELECT element and 
#     examine its value.  
#     Per http://www.w3.org/TR/html401/interact/forms.html#h-17.6.1,
#     without an explicit selected attribute, user agent behavior is 
#     undefined.  There is no way to coerce no option to be selected.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-85676760]
##
DOMTestCase('HTMLSelectElement03') do

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
    preload(contentType, "select", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLSelectElement03
    nodeList = nil
    testNode = nil
    vselectedindex = nil
    doc = nil
    doc = load_document("select", false)
      nodeList = doc.getElementsByTagName("select")
      assertSize("Asize", 3, nodeList)
      testNode = nodeList.item(1)
      vselectedindex = testNode.selectedIndex()
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLSelectElement03"
  end
end
