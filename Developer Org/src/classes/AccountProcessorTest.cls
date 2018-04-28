@isTest
private class AccountProcessorTest{
    @isTest static void testTaskPriority() {
        Test.startTest();
        List<Id> accIds = new List<Id>();
        Account  a1 = new Account();
        a1.Name = 'Test Account';
        insert a1; 
        Contact c1 = new Contact();
        c1.LastName = 'Contact Name';
        c1.AccountId = a1.Id;
        insert c1;
        Account  a2 = new Account();
        a2.Name = 'Test Account 2';
        insert a2;  
            
        accIds.add(a1.Id);
        accIds.add(a2.Id);
        AccountProcessor.countContacts(accIds);
        Test.stopTest();
    }
    
}