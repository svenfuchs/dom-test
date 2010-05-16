
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2004 World Wide Web Consortium,
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
# hasFeature("cOrE", "2.0") should return true.
# @author Curt Arnold
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-5CED94D7]
##
DOMTestCase('hasFeature06') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  ##
  def setup
    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_hasFeature06
    doc = nil
    domImpl = nil
    version = "2.0";
    state = nil
    domImpl = getImplementation()
      state = domImpl.hasFeature("cOrE", version)
assertTrue("hasCore", state)
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/hasFeature06"
  end
end

