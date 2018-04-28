@RestResource(urlMapping='/FileUploadRest/*')
global with sharing class FileUploadController {

    @HttpPost
    global static String createAttachment(String id,Attachment attach) {
        Opportunity opp = new Opportunity();
        opp = [Select Id,Name from Opportunity where Id =: id LIMIT 1];
            
        
        Attachment attachmentToInsert  = new Attachment(parentId = opp.Id, name = attach.name, 
                ContentType = attach.ContentType, 
                Body = attach.body);
                
        insert attachmentToinsert;      
    
        return opp.Id;
    }
}