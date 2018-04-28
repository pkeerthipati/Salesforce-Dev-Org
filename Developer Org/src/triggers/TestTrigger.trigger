trigger TestTrigger on Account (Before Insert,After Insert, Before Update, After Update) {

/*if(trigger.isupdate && trigger.isbefore){
    if(trigger.new != NULL){
        if(trigger.new.size() == 1){
           AccountTriggerhelper ahelper = new AccountTriggerhelper ();
           ahelper.CheckAccountEditable();
        }
    }
}*/

if(trigger.isupdate && trigger.isafter){
    
        Account acc = new Account(Id = trigger.new[0].Id); 
        acc = trigger.new[0];
        //acc = [Select Id,pkeerthipati__Sales__c,pkeerthipati__Monthly_Target__c from Account where Id =: trigger.new[0].Id];
        if(acc.pkeerthipati__Sales__c != acc.pkeerthipati__Monthly_Target__c){
            acc.pkeerthipati__Sales__c =  acc.pkeerthipati__Monthly_Target__c;
            update acc; 
        }  
        }
    





}