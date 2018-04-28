trigger expenseUpdate on Contact(after insert,after update,after delete) {
    
    Set<Id> accountIds = new Set<Id>();
    List<Account> accountUpdlst = new List<Account>();
      
    for(Contact con:System.trigger.new){
        if(con.AccountId != null){
            accountIds.add(con.AccountId);
        }
    }
        
    for(AggregateResult aresult: [SELECT SUM(Salary__c) Salary, AccountId FROM Contact WHERE AccountId IN: accountIds GROUP BY AccountId]){
        accountUpdlst.add(new Account(Id = (Id)aresult.get('AccountId'),Expense__c = (Decimal)aresult.get('Salary')));
    }    
 
    if(accountUpdlst.size() > 0){
        update accountUpdlst;
    }
}