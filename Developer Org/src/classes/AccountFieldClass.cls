public class AccountFieldClass {

    @AuraEnabled
    public static account save(string accname, string accnumber){
        Account acc=new Account();
        acc.name=accname;
        acc.AccountNumber=accnumber;
        insert acc;
        return acc;
        
    }
}