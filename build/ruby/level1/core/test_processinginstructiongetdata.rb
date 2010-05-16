
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
#     The "getData()" method returns the content of the  
#    processing instruction.  It starts at the first non
#    white character following the target and ends at the
#    character immediately preceding the "?>".
#    
#    Retrieve the ProcessingInstruction node located  
#    immediately after the prolog.  Create a nodelist of the 
#    child nodes of this document.  Invoke the "getData()"
#    method on the first child in the list. This should
#    return the content of the ProcessingInstruction.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-837822393]
##
DOMTestCase('processinginstructiongetdata') do

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
    preload(contentType, "staff", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_processinginstructiongetdata
    doc = nil
    childNodes = nil
    piNode = nil
    data = nil
    doc = load_document("staff", false)
      childNodes = doc.childNodes()
      piNode = childNodes.item(0)
      data = piNode.data()
      assert_equal("PIDATA", data, "processinginstructionGetTargetAssert")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/processinginstructiongetdata"
  end
end

