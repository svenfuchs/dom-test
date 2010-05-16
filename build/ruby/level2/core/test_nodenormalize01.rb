
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
#  The method "normalize" puts all Text nodes in the full depth of the sub-tree underneath 
#  this Node, including attribute nodes, into a "normal" form where only structure 
#  (e.g., elements, comments, processing instructions, CDATA sections, and entity references) 
#  separates Text nodes, i.e., there are neither adjacent Text nodes nor empty Text nodes. 
#  
#  Create a dom tree consisting of elements, comments, processing instructions, CDATA sections, 
#  and entity references nodes seperated by text nodes.  Check the length of the node list of each
#  before and after normalize has been called.  
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-normalize]
##
DOMTestCase('nodenormalize01') do

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
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_nodenormalize01
    doc = nil
    newDoc = nil
    domImpl = nil
    docType = nil
    docTypeNull = nil;

    documentElement = nil
    element1 = nil
    element2 = nil
    element3 = nil
    element4 = nil
    element5 = nil
    element6 = nil
    element7 = nil
    text1 = nil
    text2 = nil
    text3 = nil
    pi = nil
    cData = nil
    comment = nil
    entRef = nil
    elementList = nil
    appendedChild = nil
    doc = load_document("staffNS", true)
      domImpl = doc.getImplementation()
      newDoc = domImpl.createDocument("http://www.w3.org/DOM/Test", "dom:root", docTypeNull)
      element1 = newDoc.createElement("element1")
      element2 = newDoc.createElement("element2")
      element3 = newDoc.createElement("element3")
      element4 = newDoc.createElement("element4")
      element5 = newDoc.createElement("element5")
      element6 = newDoc.createElement("element6")
      element7 = newDoc.createElement("element7")
      text1 = newDoc.createTextNode("text1")
      text2 = newDoc.createTextNode("text2")
      text3 = newDoc.createTextNode("text3")
      cData = newDoc.createCDATASection("Cdata")
      comment = newDoc.createComment("comment")
      pi = newDoc.createProcessingInstruction("PITarget", "PIData")
      entRef = newDoc.createEntityReference("EntRef")
      assert_not_nil(entRef, "createdEntRefNotNull")
      documentElement = newDoc.documentElement()
      appendedChild = documentElement.appendChild(element1)
      appendedChild = element2.appendChild(text1)
      appendedChild = element2.appendChild(text2)
      appendedChild = element2.appendChild(text3)
      appendedChild = element1.appendChild(element2)
      text1 = text1.cloneNode(false)
      text2 = text2.cloneNode(false)
      appendedChild = element3.appendChild(entRef)
      appendedChild = element3.appendChild(text1)
      appendedChild = element3.appendChild(text2)
      appendedChild = element1.appendChild(element3)
      text1 = text1.cloneNode(false)
      text2 = text2.cloneNode(false)
      appendedChild = element4.appendChild(cData)
      appendedChild = element4.appendChild(text1)
      appendedChild = element4.appendChild(text2)
      appendedChild = element1.appendChild(element4)
      text2 = text2.cloneNode(false)
      text3 = text3.cloneNode(false)
      appendedChild = element5.appendChild(comment)
      appendedChild = element5.appendChild(text2)
      appendedChild = element5.appendChild(text3)
      appendedChild = element1.appendChild(element5)
      text2 = text2.cloneNode(false)
      text3 = text3.cloneNode(false)
      appendedChild = element6.appendChild(pi)
      appendedChild = element6.appendChild(text2)
      appendedChild = element6.appendChild(text3)
      appendedChild = element1.appendChild(element6)
      entRef = entRef.cloneNode(false)
      text1 = text1.cloneNode(false)
      text2 = text2.cloneNode(false)
      text3 = text3.cloneNode(false)
      appendedChild = element7.appendChild(entRef)
      appendedChild = element7.appendChild(text1)
      appendedChild = element7.appendChild(text2)
      appendedChild = element7.appendChild(text3)
      appendedChild = element1.appendChild(element7)
      elementList = element1.childNodes()
      assertSize("nodeNormalize01_1Bef", 6, elementList)
      elementList = element2.childNodes()
      assertSize("nodeNormalize01_2Bef", 3, elementList)
      elementList = element3.childNodes()
      assertSize("nodeNormalize01_3Bef", 3, elementList)
      elementList = element4.childNodes()
      assertSize("nodeNormalize01_4Bef", 3, elementList)
      elementList = element5.childNodes()
      assertSize("nodeNormalize01_5Bef", 3, elementList)
      elementList = element6.childNodes()
      assertSize("nodeNormalize01_6Bef", 3, elementList)
      elementList = element7.childNodes()
      assertSize("nodeNormalize01_7Bef", 4, elementList)
      newDoc.normalize()
      elementList = element1.childNodes()
      assertSize("nodeNormalize01_1Aft", 6, elementList)
      elementList = element2.childNodes()
      assertSize("nodeNormalize01_2Aft", 1, elementList)
      elementList = element3.childNodes()
      assertSize("nodeNormalize01_3Aft", 2, elementList)
      elementList = element4.childNodes()
      assertSize("nodeNormalize01_4Aft", 2, elementList)
      elementList = element5.childNodes()
      assertSize("nodeNormalize01_5Aft", 2, elementList)
      elementList = element6.childNodes()
      assertSize("nodeNormalize01_6Aft", 2, elementList)
      elementList = element7.childNodes()
      assertSize("nodeNormalize01_7Aft", 2, elementList)
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/nodenormalize01"
  end
end

