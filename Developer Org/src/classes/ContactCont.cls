public with sharing class ContactCont{

@AuraEnabled
public static string refContactName(Id cId){
    system.debug('CID'+cId);
    List<Contact> con = [Select Id,Name from Contact where Id =: cId LIMIT 1];
    system.debug('con name'+con[0].Name);
    return con[0].Name;

}

}