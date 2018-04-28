public class AddAttchment
{
    public static Attachment att{get;set;}
    public AddAttchment(ApexPages.StandardController controller) {
      
    }

    public void upload(){
    att = new Attachment();
    String conId = ApexPages.currentPage().getParameters().get('Id');
    system.debug('conId'+conId+att.name+att.description+att.body);
     insertAttchment(conId,att.name,att.description,att.body);
    }
    
    @future(callout=true)
    public static void insertAttchment(id enrollId,String name,String description,Blob body){
    
   // system.debug('test '+Attch);
    ContentModel Content= new ContentModel();
    Content.fileName=name;
    Content.parentId= enrollId;
    //Content.vData=Attch;
    content.versiondata=body;
    String str = JSON.serialize(Content);// this will converts to Json 
    
       
   
    Http http = new Http();
        HttpRequest httpReq = new HttpRequest();
        HttpResponse httpRes = new HttpResponse();
       
        httpReq.setMethod('POST');
        httpReq.setHeader('Content-Type','application/json');
        httpReq.setHeader('Authorization', 'Bearer ' ); 
        httpReq.setEndpoint('https://pradeeplightning-dev-ed.my.salesforce.com/services/apexrest/FileUploadRest/');
       httpReq.setbody(str);
       httpReq.setTimeout(120000);
       httpReq.setCompressed(true);
       //httpReq.setBodyAsBlob(body);
        httpRes = http.send(httpReq);
system.debug('httpRes'+httpRes.getbody());
    
    
    
    
    
    }
    
    }