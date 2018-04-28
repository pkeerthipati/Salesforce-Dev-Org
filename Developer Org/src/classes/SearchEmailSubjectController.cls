Public Class SearchEmailSubjectController{
public List<nameWrapper> nWList{get;set;}
public String searchText{get;set;}
public String searchProfileText{get;set;}
public Id myParam{get;set;}
public SearchEmailSubjectController(){
nWList = new List<nameWrapper>();
searchText = '';
}

public void search(){
nWList = new List<nameWrapper>();
MetadataService.MetadataPort objMeta = new MetadataService.MetadataPort();
MetadataService.MetadataPort service = MetadataServiceExamples.createService();     
List<MetadataService.ListMetadataQuery> queries = new List<MetadataService.ListMetadataQuery>();        
/*MetadataService.ListMetadataQuery queryWorkflow = new MetadataService.ListMetadataQuery();
queryWorkflow.type_x = 'WorkflowRule';
queries.add(queryWorkflow); */    
/*MetadataService.ListMetadataQuery queryValidationRule = new MetadataService.ListMetadataQuery();
queryValidationRule.type_x = 'ValidationRule';
queries.add(queryValidationRule); */ 

MetadataService.ListMetadataQuery queryEmailAlert = new MetadataService.ListMetadataQuery();
queryEmailAlert.type_x = 'WorkflowAlert';
queries.add(queryEmailAlert);         
MetadataService.FileProperties[] fileProperties = service.listMetadata(queries, 25);
List<String> emailAlertNamesList = new List<String>();
for(MetadataService.FileProperties fileProperty : fileProperties)
{
emailAlertNamesList.add(fileProperty.id);
}
for(MetadataService.FileProperties fileProperty : fileProperties)
{
    System.debug(fileProperty.fullName);
    System.debug(fileProperty+'==' +fileProperty.Id);
    nameWrapper nW;
    if(searchText == null)
    nW = new nameWrapper(fileProperty.fullName.substring(0,fileProperty.fullName.indexOf('.')),fileProperty.fullName.substring(fileProperty.fullName.indexOf('.')+1,fileProperty.fullName.length()),fileProperty.Id);
    else
    if(fileProperty.fullName.substring(fileProperty.fullName.indexOf('.')+1,fileProperty.fullName.length()).contains(searchText))
    nW = new nameWrapper(fileProperty.fullName.substring(0,fileProperty.fullName.indexOf('.')),fileProperty.fullName.substring(fileProperty.fullName.indexOf('.')+1,fileProperty.fullName.length()),fileProperty.Id);
    
    nWList.add(nW);
    MetadataService.IReadResult mdInfo = service.readMetadata('WorkflowAlert',new String[]{fileProperty.fullName});
    list<MetadataService.Metadata> objmmm = new list<MetadataService.Metadata>();
    
    objmmm = mdInfo.getrecords();
    //system.debug('mdInfo==%%%==='+objmmm.Metadata.fullName);
          /*//system.debug('description:::'+mdInfo.getrecords()[0].senderAddress_type_info);
            MetadataService.Metadata[] mdInfoList = mdInfo.getrecords();
            for(MetadataService.Metadata md:mdInfoList){
            MetadataService.WorkflowAlert alert = (MetadataService.WorkflowAlert)md;
            system.debug('description:::'+alert);
            system.debug('From:::'+alert.senderAddress);*/
            MetadataService.WorkflowAlert[] alert = (MetadataService.WorkflowAlert[]) service.readMetadata('WorkflowAlert',emailAlertNamesList).getrecords();
                for(MetadataService.WorkflowAlert wfa:alert){
                    system.debug('description1:::'+wfa+'===='+wfa.description);
                    system.debug('From Addrss2:::'+wfa.recipients);
                }
                
           //MetadataService.WorkflowEmailRecipient[] alertrec = (MetadataService.WorkflowEmailRecipient[])service.readMetadata('WorkflowEmailRecipient',emailAlertNamesList).getrecords();     
         
}

}

public void searchProfile(){
nWList = new List<nameWrapper>();
MetadataService.MetadataPort objMeta = new MetadataService.MetadataPort();
MetadataService.MetadataPort service = MetadataServiceExamples.createService();  
MetadataService.Profile admin = (MetadataService.Profile) service.readMetadata('Profile', new String[] { 'Admin' }).getRecords()[0];   
List<MetadataService.ListMetadataQuery> queries = new List<MetadataService.ListMetadataQuery>();   
list<MetadataService.ProfileFieldLevelSecurity> fieldpermlist = new list<MetadataService.ProfileFieldLevelSecurity>();
        system.debug('Field Permission'+admin);        
        for(MetadataService.ProfileFieldLevelSecurity pfs : admin.fieldPermissions)
        {
        
            fieldpermlist.add(pfs);
            
        }    
        system.debug('Field Permission'+fieldpermlist[0]); 
        admin.fieldPermissions[0].editable=true;
        List<MetadataService.SaveResult> results = service.updateMetadata(new MetadataService.Metadata[] { admin });        
        //fieldpermlist
/*MetadataService.ListMetadataQuery queryWorkflow = new MetadataService.ListMetadataQuery();
queryWorkflow.type_x = 'WorkflowRule';
queries.add(queryWorkflow); */    
/*MetadataService.ListMetadataQuery queryValidationRule = new MetadataService.ListMetadataQuery();
queryValidationRule.type_x = 'ValidationRule';
queries.add(queryValidationRule); */ 

/*MetadataService.ListMetadataQuery queryEmailAlert = new MetadataService.ListMetadataQuery();
queryEmailAlert.type_x = 'Profile';
queries.add(queryEmailAlert);         
MetadataService.FileProperties[] fileProperties = service.listMetadata(queries, 1);
List<String> emailAlertNamesList = new List<String>();
for(MetadataService.FileProperties fileProperty : fileProperties)
{
emailAlertNamesList.add(fileProperty.id);
}
List<String> emailAlertNamesList = new List<String>();
emailAlertNamesList.add(searchProfileText);
MetadataService.Profile[] alert = (MetadataService.Profile[]) service.readMetadata('Profile',emailAlertNamesList).getrecords();
                for(MetadataService.Profile wfa:alert){
                    system.debug('Profile Permissions:::'+wfa+'===='+wfa.fieldPermissions);
                    //system.debug('From Addrss2:::'+wfa.recipients);
                }
                
             
/*for(MetadataService.FileProperties fileProperty : fileProperties)
{
    System.debug(fileProperty.fullName);
    System.debug(fileProperty+'==' +fileProperty.Id);
    nameWrapper nW;
    if(searchText == null)
    nW = new nameWrapper(fileProperty.fullName.substring(0,fileProperty.fullName.indexOf('.')),fileProperty.fullName.substring(fileProperty.fullName.indexOf('.')+1,fileProperty.fullName.length()),fileProperty.Id);
    else
    if(fileProperty.fullName.substring(fileProperty.fullName.indexOf('.')+1,fileProperty.fullName.length()).contains(searchProfileText))
    nW = new nameWrapper(fileProperty.fullName.substring(0,fileProperty.fullName.indexOf('.')),fileProperty.fullName.substring(fileProperty.fullName.indexOf('.')+1,fileProperty.fullName.length()),fileProperty.Id);
    
    nWList.add(nW);
    MetadataService.IReadResult mdInfo = service.readMetadata('Profile',new String[]{fileProperty.fullName});
    list<MetadataService.Metadata> objmmm = new list<MetadataService.Metadata>();
    
    objmmm = mdInfo.getrecords();
    //system.debug('mdInfo==%%%==='+objmmm.Metadata.fullName);
          //system.debug('description:::'+mdInfo.getrecords()[0].senderAddress_type_info);
            MetadataService.Metadata[] mdInfoList = mdInfo.getrecords();
            for(MetadataService.Metadata md:mdInfoList){
            MetadataService.WorkflowAlert alert = (MetadataService.WorkflowAlert)md;
            system.debug('description:::'+alert);
            system.debug('From:::'+alert.senderAddress);
            MetadataService.Profile[] alert = (MetadataService.Profile[]) service.readMetadata('Profile',emailAlertNamesList).getrecords();
                for(MetadataService.Profile wfa:alert){
                    system.debug('Profile Permissions:::'+wfa+'===='+wfa.fieldPermissions);
                    //system.debug('From Addrss2:::'+wfa.recipients);
                }
                
           //MetadataService.WorkflowEmailRecipient[] alertrec = (MetadataService.WorkflowEmailRecipient[])service.readMetadata('WorkflowEmailRecipient',emailAlertNamesList).getrecords();     
/*
/*MetadataService.MetadataPort service = createService();
MetadataService.Profile admin = new MetadataService.Profile();
admin.fullName = 'Admin';
admin.custom = false;
MetadataService.ProfileFieldLevelSecurity fieldSec = new MetadataService.ProfileFieldLevelSecurity();
fieldSec.field='Test__c.TestField__c';
fieldSec.editable=true;
admin.fieldPermissions  = new MetadataService.ProfileFieldLevelSecurity[] {fieldSec} ;
List<MetadataService.SaveResult> results =      
    service.updateMetadata(
        new MetadataService.Metadata[] { admin });

         
}*/

}
public pagereference gotoLink()
{
        System.debug('myparamn'+myparam);
        PageReference orderPage = new PageReference('/' + myparam);
        orderPage.setRedirect(true);
        return orderPage;

}
public class nameWrapper
{
public string objectname{get;set;}
public string rulename{get;set;}
public Id ruleId{get;set;}
public nameWrapper(String objname,string rname,Id rId)
{
this.objectname = objname;
this.rulename = rname;
this.ruleId = rId;

}
}
}