@isTest
private class TestRestrictContactByName{
    @isTest static void testTaskPriority() {
    Contact c1 = new Contact();
    c1.Lastname = 'VALIDNAME'; 
    insert c1;
    c1.lastName = 'INVALIDNAME';    
    Test.startTest();
    Database.SaveResult result = Database.update(c1, false);
    Test.stopTest();
    }
    
    
}