
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2005 World Wide Web Consortium, 
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
# A monitor is added, multiple calls to removeEventListener
# are mde with similar but not identical arguments, and an event is dispatched.  
# The monitor should recieve handleEvent calls.
# @author Curt Arnold
# see[http://www.w3.org/TR/DOM-Level-2-Events/events#Events-EventTarget-dispatchEvent]
# see[http://www.w3.org/TR/DOM-Level-2-Events/events#xpointer(id('Events-EventTarget-dispatchEvent')/raises/exception[@name='EventException']/descr/p[substring-before(.,':')='UNSPECIFIED_EVENT_TYPE_ERR'])]
##
DOMTestCase('dispatchEvent12') do

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
    preload(contentType, "hc_staff", true)
  end

     ###
     #    Inner class implementation for variable other 
     ##
      private static class EventListenerid36044231
           extends org.w3c.domts.DOMTestInnerClass 
           implements EventListener {
       ###
        # Constructor
        # @param test test case
        ##
        public EventListenerid36044231(DOMTestCase test) { 
        super(test)
           }
   
        ###
        #    
This method is called whenever an event occurs of the type for which theEventListenerinterface was registered.

        # @param evt TheEventcontains contextual information about the event. It also contains thestopPropagationandpreventDefaultmethods which are used in determining the event's flow and default action.
        ##
         public void handleEvent(Event evt) {
        }
}

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_dispatchEvent12
    doc = nil
    target = nil
    evt = nil
    preventDefault = nil
    monitor = new org.w3c.domts.EventMonitor()
      
    other = new EventListenerid36044231(this)
    events = []
      
    doc = load_document("hc_staff", true)
      doc.addEventListener("foo", monitor, false)
      doc.removeEventListener("foo", monitor, true)
      doc.removeEventListener("food", monitor, false)
      doc.removeEventListener("foo", other, false)
      evt = doc.createEvent("Events")
      evt.initEvent("foo", true, false)
      preventDefault = doc.dispatchEvent(evt)
      events = monitor.getAllEvents()
assertSize("eventCount", 1, events)
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/dispatchEvent12"
  end
end

