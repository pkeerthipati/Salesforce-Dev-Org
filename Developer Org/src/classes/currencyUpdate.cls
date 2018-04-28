public class currencyUpdate {
 
    // Pass in the URL for the request
    // For the purposes of this sample,assume that the URL
    // returns the XML shown above in the response body
    public void parseResponseDom(String d){
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        // url that returns the XML in the response body
        req.setEndpoint('https://sdw-wsrest.ecb.europa.eu/service/data/EXR/D..EUR.SP00.A?startPeriod='+d);
        //req.setEndpoint('https://sdw-wsrest.ecb.europa.eu/service/data/EXR/D..EUR.SP00.A');
        req.setMethod('GET');
        req.setHeader('Accept', 'text/plain');
        HttpResponse res = h.send(req);
        system.debug('Result'+res);
        
        XmlStreamReader reader = res.getXmlStreamReader();
        // Read through the XML
        while(reader.hasNext()) {
          System.debug('Event Type:' + reader.getEventType()+XmlTag.START_ELEMENT+reader.getLocalName());
          if (reader.getEventType() == XmlTag.START_ELEMENT) {
            System.debug(reader.getLocalName());
          }
          reader.next();
        }
        
        
        
        /*Dom.Document doc = res.getBodyDocument();
        
        //Retrieve the root element for this document.
        Dom.XMLNode address = doc.getRootElement();
        
        String name = address.getChildElement('Series', null).getText();
        //String state = address.getChildElement('state', null).getText();
        // print out specific elements
        System.debug('******Name: ' + name);
        //System.debug('State: ' + state);
        
        // Alternatively, loop through the child elements.
        // This prints out all the elements of the address
        for(Dom.XMLNode child : address.getChildElements()) {
           System.debug(child.getText());
        }*/
    }
}