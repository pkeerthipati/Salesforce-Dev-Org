global class AccountProcessor{

    // Call async from triggers, etc, where callouts are not permitted.
    @future(callout=true)
    public static void countContacts(List<Id> accIds) {
         List<Account> accUpdateList = new List<Account>();
         for(Account a : [Select Id,Number_of_Contacts__c,(Select Id from contacts) from Account where Id IN: accIds]){
             if(a.contacts.size() > 0){
                 a.Number_of_Contacts__c = a.contacts.size();
                 
             }
             else{
                 a.Number_of_Contacts__c = 0;
             }
             accUpdateList.add(a);
         } 
         update accUpdateList;  
    }

}