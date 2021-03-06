
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
#  Using the method getNamedItemNS, retreive the entity "ent1" and notation "notation1" 
#  from a NamedNodeMap of this DocumentTypes entities and notations.
#  Both should be null since entities and notations are not namespaced.
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-getNamedItemNS]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=259]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=407]
# see[http://lists.w3.org/Archives/Member/w3c-dom-ig/2003Nov/0016.html]
##
DOMTestCase('namednodemapgetnameditemns01') do

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
  def test_namednodemapgetnameditemns01
    doc = nil
    docType = nil
    entities = nil
    notations = nil
    entity = nil
    notation = nil
    entityName = nil
    notationName = nil
    nullNS = nil;

    doc = load_document("staffNS", false)
      docType = doc.doctype()
      entities = docType.entities()
      assert_not_nil(entities, "entitiesNotNull")
      notations = docType.notations()
      assert_not_nil(notations, "notationsNotNull")
      entity = entities.getNamedItemNS(nullNS, "ent1")
      assert_nil(entity, "entityNull")
      notation = notations.getNamedItemNS(nullNS, "notation1")
      assert_nil(notation, "notationNull")
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapgetnameditemns01"
  end
end

