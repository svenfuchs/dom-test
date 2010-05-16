
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
#     The "importNode(importedNode,deep)" method for a 
#    Document should import the given importedNode into that Document.
#    The importedNode is of type Entity.
#    
#    Retrieve entity "ent4" from staffNS.xml document.  
#    Invoke method importNode(importedNode,deep) on this document with deep as false.
#    Method should return a node of type Entity whose descendant is copied.
#    The returned node should belong to this document whose systemId is "staffNS.dtd"
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#Core-Document-importNode]
##
DOMTestCase('importNode12') do

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
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_importNode12
    doc = nil
    aNewDoc = nil
    doc1Type = nil
    entityList = nil
    entity2 = nil
    entity1 = nil
    ownerDocument = nil
    docType = nil
    system = nil
    entityName = nil
    child = nil
    childName = nil
    doc = load_document("staffNS", true)
      aNewDoc = load_document("staffNS", true)
      doc1Type = aNewDoc.doctype()
      entityList = doc1Type.entities()
      assert_not_nil(entityList, "entitiesNotNull")
      entity2 = entityList.getNamedItem("ent4")
      entity1 = doc.importNode(entity2, true)
      ownerDocument = entity1.ownerDocument()
      docType = ownerDocument.doctype()
      system = docType.systemId()
      assertURIEquals("systemId", nil, nil, nil, "staffNS.dtd", nil, nil, nil, nil, system)
entityName = entity1.nodeName()
      assert_equal("ent4", entityName, "entityName")
            child = entity1.firstChild()
      assert_not_nil(child, "notnull")
      childName = child.nodeName()
      assert_equal("entElement1", childName, "childName")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/importNode12"
  end
end
