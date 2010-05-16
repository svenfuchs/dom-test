
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2004 World Wide Web Consortium, 
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
#     Retrieve the second employee node and invoke the "getNamespaceURI()"   
#     method.   The method should return "null". 
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-NodeNSname]
##
DOMTestCase('namespaceURI04') do

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
    preload(contentType, "staffNS", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_namespaceURI04
    doc = nil
    elementList = nil
    testEmployee = nil
    employeeNamespace = nil
    doc = load_document("staffNS", false)
      elementList = doc.getElementsByTagName("employee")
      testEmployee = elementList.item(1)
      employeeNamespace = testEmployee.namespaceURI()
      
      if (("image/svg+xml" == getContentType()))
        assertTrue("employeeNS_svg", 
    ((employeeNamespace == nil) | equals("http://www.w3.org/2001/DOM-Test-Suite/Level-2/Files", employeeNamespace))
)
      
          else
            assert_nil(employeeNamespace, "employeeNS_null")
      
         end
       
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namespaceURI04"
  end
end

