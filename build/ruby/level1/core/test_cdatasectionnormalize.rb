
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
# Adjacent CDATASection nodes cannot be merged together by
# use of the "normalize()" method from the Element interface.
# Retrieve second child of the second employee and invoke
# the "normalize()" method.  The Element under contains
# two CDATASection nodes that should not be merged together
# by the "normalize()" method.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-162CF083]
##
DOMTestCase('cdatasectionnormalize') do

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
  def test_cdatasectionnormalize
    doc = nil
    nameList = nil
    lChild = nil
    childNodes = nil
    cdataN = nil
    data = nil
    doc = load_document("staff", true)
      nameList = doc.getElementsByTagName("name")
      lChild = nameList.item(1)
      lChild.normalize()
      childNodes = lChild.childNodes()
      cdataN = childNodes.item(1)
      assert_not_nil(cdataN, "firstCDATASection")
      data = cdataN.data()
      assert_equal("This is a CDATASection with EntityReference number 2 &ent2;", data, "data1")
            cdataN = childNodes.item(3)
      assert_not_nil(cdataN, "secondCDATASection")
      data = cdataN.data()
      assert_equal("This is an adjacent CDATASection with a reference to a tab &tab;", data, "data3")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/cdatasectionnormalize"
  end
end

