Public Class XMLWriter{
public string selectedObject {get;set;}
    public XMLWriter(ApexPages.StandardController controller) {
        getxmlRes();
    }


public void getxmlRes()
        {
List<Account> acc = [select id,name from account LIMIT 1];        
XmlStreamWriter w = new XmlStreamWriter();
w.writeStartDocument(null,'1.0');
w.writeStartElement(null,'accounts',null);
for(account a:acc)
{
  w.writeStartElement(null,'account',null);
  w.writeStartElement(null,'id',null);
  w.writeCharacters(String.valueOf(a.id));
  w.writeEndElement();
  w.writeStartElement(null,'name',null);
  w.writeCharacters(a.name);
  w.writeEndElement();
  w.writeStartElement(null,'contacts',null);
  for(Contact c:[select id,name from Contact where AccountId =: a.id])
  {
      w.writeStartElement(null,'contact',null);
      w.writeStartElement(null,'id',null);
      w.writeCharacters(String.valueOf(c.id));
      w.writeEndElement();
      w.writeStartElement(null,'name',null);
      w.writeCharacters(c.name);
      w.writeEndElement();
      w.writeEndElement();
  }
  w.writeEndElement();
  w.writeEndElement();
}
w.writeEndElement();
w.writeEndDocument();
string xml = w.getXmlString();
w.close();
system.debug(xml);

Attachment attachmentPDF = new Attachment();
attachmentPdf.parentId = acc[0].id;
attachmentPdf.name = account.name + '.pdf';
attachmentPdf.body = blob.valueof(xml);
system.debug('size'+blob.toPDF(xml).size());
insert attachmentPDF;

}
}