Public Class GenericJSONParser{

    public String jsonString {get;set;}
    public String parentObj{get;set;}
    public String childObj{get;set;}
    public String relationshipID{get;set;}
    public String filter{get;set;}
    public String filterValue{get;set;}
    public String url{get;set;}
    public Map<String,String> searchMap;
    
    public String innerQuery = '';
    public String outerQuery = '';
    /*public GenericJSONParser(){
        
        jsonString = prepareData();
    }*/
    
    public String prepareData(){
    
    if(childObj != '' && childObj != NULL){
    innerQuery = 'Select Id, Name from '+ childObj;  
    }
    if(filter != '' && filter != NULL){
    innerQuery = innerQuery + ' Where ' + filter + ' = ' + '\'' +filterValue + '\'';
    system.debug('inner query'+innerQuery); 
    }
    if(innerQuery != '' && parentObj != ''){
    outerQuery = 'Select Id,Name,('+ innerQuery + ') FROM '+ parentObj;
    }
    system.debug('outer query'+outerQuery);
    
    List<sObject> sObj = new List<sObject>();
    if(outerQuery != '' && outerQuery != NULL)
    sObj = Database.Query(outerQuery);
    
    jsonString = JSON.serialize(sObj);
    
    return null;

    
    
    }
    
    public String prepareDataURL(){
    innerQuery = '';
    searchMap = new Map<String,String>();
    List<String> searchParameters = new List<String>();
    try{
    searchParameters = url.split('/');
    
    system.debug('search parameters'+searchParameters);
    for(string s: searchParameters){
    List<string> splitStr = new List<string>();
    system.debug('search parameters splitting'+s.indexOf('=')+'split'+s.split('=', s.indexOf('=')));
    splitStr = s.split('=', 2);
    system.debug('Split String'+splitStr);
    integer len = splitStr[1].length();
    system.debug('remove string'+splitStr[1].substring(1,len-1)+len);
    
    searchMap.put(splitStr[0],splitStr[1].substring(1, len-1));
    }
    system.debug('search parameters final'+searchMap);
    
    if(searchMap.get('childObject') != '' && searchMap.get('childObject') != NULL || searchMap.get('childObjectFields') != '' && searchMap.get('childObjectFields') != NULL){
    innerQuery = 'Select '+ searchMap.get('childObjectFields') +' from '+ searchMap.get('childObject');   
    }
    if(searchMap.get('searchChildFilter') != '' && searchMap.get('searchChildFilter') != NULL){
    innerQuery = innerQuery + ' Where ' + searchMap.get('searchChildFilter');
    
    }
    system.debug('inner query'+innerQuery); 
    if(innerQuery != NULL && innerQuery != '' && searchMap.get('parentObject') != '' && searchMap.get('parentObject') != NULL){
    outerQuery = 'Select '+searchMap.get('parentObjectFields')+','+'('+ innerQuery + ') FROM '+ searchMap.get('parentObject');
    }
    else if(searchMap.get('parentObject') != '' && searchMap.get('parentObject') != NULL){
    
    outerQuery = 'Select '+searchMap.get('parentObjectFields')+' FROM '+ searchMap.get('parentObject');
    }
    
    if(searchMap.get('searchParentFilter') != '' && searchMap.get('searchParentFilter') != NULL){
    outerQuery = outerQuery + ' Where ' + searchMap.get('searchParentFilter');
    
    }
    system.debug('outer query'+outerQuery);
    
    List<sObject> sObj = new List<sObject>();
    if(outerQuery != '' && outerQuery != NULL)
    sObj = Database.Query(outerQuery);
    
    jsonString = JSON.serialize(sObj);
    
    }
    catch(Exception e){
    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.FATAL,'Please enter the search URL in the above format'));
    
    }
    
    return null;

    
    
    }



}