public class getAccounts {
    @AuraEnabled 
    public static Account getAccount(){
        return (Account) Database.query( ' SELECT Id,Name FROM Account LIMIT 1 ' )[0];
    }

    @AuraEnabled 
    public static Account saveAccount(Account acc){
        upsert acc;
        return acc;
    } 
    
    @AuraEnabled
    public static List<String> getAccountSource(){
        List<String> options = new List<String>();
        Schema.DescribeFieldResult fieldResult = Account.AccountSource.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        for (Schema.PicklistEntry f: ple) {
            options.add(f.getLabel());
        }
        return options;
    }

    @AuraEnabled
    public static string updateToSubmitted(ID accId) {
        
        List<Account> accList = [Select Id,Name,Rating from Account where ID =:accId];
        Account a = accList[0];
        a.Name = 'Partner Account 987654321';       
        update a;
        return 'false';
    } 

}