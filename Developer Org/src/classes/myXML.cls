public with sharing class myXML {
private ID opportunityId = null;
Opportunity theOpportunity = new Opportunity();   
public string theXMLFile { get; set; }

 //Constructor
    public myXML(ApexPages.StandardController stdController) 
    {
        System.debug('Begin Constructor for myXML...');      
        
        // Check if the controller has already been intialized
        if (opportunityId == null)
        {
            // Get AgreementId
            this.opportunityId = System.currentPageReference().getParameters().get('opportunityId');
            System.debug('opportunityId: ' + opportunityId);
        }
        System.debug('End Constructor for myXML...');   
    }

// Code invoked on page load.      
public PageReference downloadXML()
{       
    System.debug('Begin downloadXML method ... ');
        
    // Declare variable
    Id currentOpportunityId;
                
    // Get agreementId
    if (opportunityId == null)
    {
        currentOpportunityId = ApexPages.currentPage().getParameters().get('opportunityId');
    }
         else
    {
          currentOpportunityId = opportunityId;
    }
       
    for (Opportunity theOpportunity:[select Id, Name from Opportunity where id =:currentOpportunityId Limit 1]) 
    {
    theXMLFile = getXml(theOpportunity);
    } //End Loop for Opportunity
                  
     return null;  
} //End Method 

public String getXml(Opportunity theOpportunity) {
//public String getXml() {
    Xmlstreamwriter w = new Xmlstreamwriter();
    w.writeStartDocument('utf-8','1.0');
    w.writeProcessingInstruction('target','data');        
    w.writeStartElement(null,'ProjectInformationDialog', null);
        w.writeStartElement(null,'Extention',null);
            w.writeCharacters('The XML');
        w.writeEndElement(); //Close Extenstion
        w.writeStartElement(null,'Tab',null);
            w.writeStartElement(null,'Label',null);
                w.writeStartElement(null,'English',null);
                w.writeCharacters('Order Information');
                w.writeEndElement(); //Close English
            w.writeEndElement(); //Close Label
            w.writeStartElement(null,'Field',null);
                w.writeStartElement(null,'Label',null);
                    w.writeStartElement(null,'English',null);
                    w.writeCharacters('Project Name:');
                    w.writeEndElement(); //Close English
                w.writeEndElement(); //Close label  
                w.writeStartElement(null,'Type',null);
                    w.writeCharacters('FormattedTextField');
                    w.writeEndElement(); //Close Type
                w.writeStartElement(null,'Key',null);
                         w.writeCharacters(theOpportunity.Name); 
                w.writeEndElement(); //Close Key
                w.writeStartElement(null,'Length',null);
                    w.writeCharacters('20');
                w.writeEndElement(); //Close Length
            w.writeEndElement(); //Close Field  
        w.writeEndElement(); //Close Tab
        w.writeEndElement(); //Close Project Information Dialog
    w.writeEndDocument(); //Close XML document

    String xmlOutput = w.getXmlString();
    System.debug('The XML :'+w.getXmlString());     
    w.close();
    return xmlOutput;
    }

}