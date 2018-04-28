trigger updateExpenseOnAccount on Contact (after insert, after update, after delete, after undelete) {

Set<Id> AccountIds = new Set<Id>();

if(!Trigger.isDelete)
{
    for (Contact ct : Trigger.new) 
    {        

        if(Trigger.isInsert && ct.AccountId != null)
        {
            AccountIds.add(ct.AccountId);
        }
         if(Trigger.isUpdate)
        {
            if(ct.AccountId==null && Trigger.oldMap.get(ct.Id).AccountId != null)
            {
                AccountIds.add(Trigger.oldMap.get(ct.Id).AccountId);
            }
            if(ct.AccountId!=null && Trigger.oldMap.get(ct.Id).AccountId != null && ct.AccountId != Trigger.oldMap.get(ct.Id).AccountId)
            {
                AccountIds.add(ct.AccountId);
                AccountIds.add(Trigger.oldMap.get(ct.Id).AccountId);
            }
            if(ct.AccountId!=null && Trigger.oldMap.get(ct.Id).AccountId == null)
            {
                AccountIds.add(ct.AccountId);
            }
        }

        if(Trigger.isUndelete && ct.AccountId != null)
        {
            AccountIds.add(ct.AccountId);
        }
    }
}

else
{
    for (Contact ct : Trigger.old){
        if(ct.AccountId != null){
            AccountIds.add(ct.AccountId);
        }
    }   
}

List<Account> AcctToUpdate = new List<Account>();
for (AggregateResult ar: [Select Sum(pkeerthipati__Salary__c) SalarySum, AccountId from Contact where AccountId IN: AccountIds GROUP BY AccountId])
{
    Account tmp = new Account(Id=(Id)ar.get('AccountId'), pkeerthipati__Expense__c=(Decimal)ar.get('SalarySum'));
    AcctToUpdate.add(tmp);
}
if(AcctToUpdate.size()>0) 
update AcctToUpdate;
 }