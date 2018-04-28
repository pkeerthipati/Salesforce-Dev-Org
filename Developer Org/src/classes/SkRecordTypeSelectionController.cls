public with sharing class SkRecordTypeSelectionController {
   
    @AuraEnabled
    public static string findRecordTypes(string objName){
        string returnString='';
        set<String> recordTypeSet = new set<String>();
        recordTypeSet.add('Financial Hardship Request');
        recordTypeSet.add('Travel Request');
        recordTypeSet.add('Emergency Travel Request');
        recordTypeSet.add('Miscellenous Travel Request');
        recordTypeSet.add('Cold Weather Gear Request');
        recordTypeSet.add('Test');
        string queryString='Select id, name from RecordType where sobjectType =: objName and IsActive=true';
        List<sobject> recordList= Database.query(queryString);
        List<RecordTypeWrapper> wrapperList=new List<RecordTypeWrapper>();
        for(sobject sb : recordList)  {
            if(recordTypeSet.contains(string.valueof(sb.get('name')))){
                RecordTypeWrapper rw=new RecordTypeWrapper();
                rw.recordTypeLabel=string.valueof(sb.get('name'));
                rw.recordTypeId=string.valueof(sb.get('id'));
                wrapperList.add(rw);
            }    
        } 
        returnString= JSON.serialize(wrapperList);
        system.debug('*****'+returnString);
        return returnString;
    }
    public class RecordTypeWrapper{
        public string recordTypeLabel{get;set;}
        public string recordTypeId{get;set;}
    }
}