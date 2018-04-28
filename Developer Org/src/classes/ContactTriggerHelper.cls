public class ContactTriggerHelper{
    public List<Contact> newList;
    public List<Contact> oldList;
    public Map<Id,Contact> newMap;
    public Map<Id,Contact> oldMap;
    public Boolean isBefore = false;
    public Boolean isAfter = false;
    public Boolean isInsert = false;
    public Boolean isUpdate = false;
    public Boolean isDelete = false;
    public Map<String,Contact> conMap;
    
    public ContactTriggerHelper(){
        newList = new List<Contact>();
        oldList = new List<Contact>();
        newMap = new Map<Id,Contact>();
        oldMap = new Map<Id,Contact>();
    }
    
    public void performActions(List<Contact> newL,List<Contact> oldL,Map<Id,Contact> newM,Map<Id,Contact> oldM,Boolean isB,Boolean isA,Boolean isI,Boolean isU,Boolean isD){
        newList = newL;
        oldList = oldL;
        newMap = newM;
        oldMap = oldM;
        isBefore = isB;
        isAfter = isA;
        isInsert = isI;
        isUpdate = isU;
        isDelete = isD;
        
        if(isBefore){
            if(isInsert){
                //populateUnique();
                
            }
            if(isUpdate){
                //populateUnique();
                
            }
            if(isDelete){
                //populateUnique();
            }
        }
        if(isAfter){
            if(isInsert){
            
            }
            if(isUpdate){
            
            }
            if(isDelete){
                
            }
        }
    }
    
    public void populateUnique(){
        List<String> uniqueKeyList = new List<String>();
        List<Id> conMasterIdList = new List<Id>();
        conMap = new Map<String,Contact>();
        Map<Id,List<Contact>> masterConMap = new  Map<Id,List<Contact>>();
        for(Contact con:newList){
            String uniqueKey = '';
            if(con.FirstName != null){
                uniqueKey = con.FirstName + '-';
            }
            if(con.LastName != null){
                uniqueKey = uniqueKey + con.LastName + '-';
            }
            if(con.Email != null){
                uniqueKey = uniqueKey + con.Email;
            }
            con.Contact_unique_key__c = uniqueKey;
            uniqueKeyList.add(uniqueKey);
            conMasterIdList.add(con.Id);
        }
        if(isUpdate || isDelete){
            for(Contact con:oldList){
                uniqueKeyList.add(con.Contact_unique_key__c);
                conMasterIdList.add(con.Id);
            }
        }
        for(Contact con : [Select Id,Contact_unique_key__c,Master_Contact__c,Number_of_Children__c from Contact where Master_Contact__c = true AND Contact_unique_key__c IN: uniqueKeyList]){
            conMap.put(con.Contact_unique_key__c,con);
            conMasterIdList.add(con.Id);
        }
        for(Contact c : [Select Id,ReportsToId from Contact where ReportsToId IN: conMasterIdList]){
            if(masterConMap.get(c.ReportsToId) != null){
                masterConMap.get(c.ReportsToId).add(c);
            }else{
                List<Contact> conL = new List<Contact>();
                conL.add(c);
                masterConMap.put(c.ReportsToId,conL);
            }
        }
        List<Contact> updateMasterConList = new List<Contact>();
        for(Contact con:newList){
            system.debug('Is Insert'+isInsert);
            system.debug('Is Update'+isUpdate);
            if(isInsert){
                if(conMap.get(con.Contact_unique_key__c) != null){
                    con.ReportsToId = conMap.get(con.Contact_unique_key__c).Id;
                    Contact c = assignMaster(con,'add');
                    updateMasterConList.add(c);
                }else{
                    con.Master_Contact__c = true;
                    con.Number_of_Children__c = 0;
                }
            }
            if(isUpdate && con.Contact_unique_key__c != oldMap.get(con.Id).Contact_unique_key__c){
                if(con.Master_Contact__c == false){
                    system.debug('com map===>'+conMap.get(con.Contact_unique_key__c));
                    if(conMap.get(con.Contact_unique_key__c) != null){
                        system.debug('Inside If Map==>');
                        con.ReportsToId = conMap.get(con.Contact_unique_key__c).Id;
                        Contact c1 = assignMaster(con,'Add');
                        Contact c2 = assignMaster(con,'Sub');
                        updateMasterConList.add(c1);
                        updateMasterConList.add(c2);
                    }else{
                        con.ReportsToId = null;
                        con.Master_Contact__c = true;
                        con.Number_of_Children__c = 0;
                        Contact c2 = assignMaster(con,'Sub');
                        updateMasterConList.add(c2);
                    }   
                }else{
                    if(masterConMap.get(con.Id) != null){
                        con.adderror('Children exists so cannot be updated');
                    }else{
                        if(conMap.get(con.Contact_unique_key__c) != null){
                            con.ReportsToId = conMap.get(con.Contact_unique_key__c).Id;
                            con.Master_Contact__c = false;
                            Contact c1 = assignMaster(con,'Add');
                            updateMasterConList.add(c1);
                        }else{
                            
                        }
                    }
                }
            }
            if(isDelete){
                system.debug('Inside Delete');
                if(con.Master_Contact__c == false){
                    if(conMap.get(con.Contact_unique_key__c) != null){
                        Contact c2 = assignMaster(con,'Sub');
                        updateMasterConList.add(c2);
                    }
                }else{
                    system.debug('Inside Else'+masterConMap.get(con.Id));
                    if(masterConMap.get(con.Id) != null){
                        con.adderror('Children exists so cannot be deleted');
                    }
                }
            }
        }
        update updateMasterConList;
    }
    
    public contact assignMaster(Contact cC,String isAddorSub){
        Contact cM = new Contact();
        system.debug('Before If'+cM.Number_of_Children__c);
        if(isAddorSub == 'Add'){    
            cM = conMap.get(cC.Contact_unique_key__c);
            if(cM.Number_of_Children__c != null){
                cM.Number_of_Children__c = cM.Number_of_Children__c + 1;
            }   
            else{
                cM.Number_of_Children__c = 1;
            }   
        }else{
            cM = conMap.get(oldMap.get(cC.Id).Contact_unique_key__c);
            system.debug('CM'+oldMap.get(cC.Id).Contact_unique_key__c+cM);
            if(cM.Number_of_Children__c != null){
                cM.Number_of_Children__c = cM.Number_of_Children__c - 1;
            }
        }
        return cM;
    }
    
    
}