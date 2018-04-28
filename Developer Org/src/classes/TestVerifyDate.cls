@isTest
private class TestVerifyDate{
    @isTest static void testTaskPriority() {
        Date date1 = Date.ValueOf('2016-02-10');
        Date date2 = Date.ValueOf('2016-02-11');
        Date ckdate = VerifyDate.CheckDates(date1,date2);
        
        
    }
    
    @isTest static void testTaskHighPriority() {
        Date date1 = Date.ValueOf('2016-02-01');
        Date date2 = Date.ValueOf('2016-03-12');
        Date ckdate = VerifyDate.CheckDates(date1,date2);
        
    }
    
    @isTest static void testTaskPriorityInvalid() {
        Date date1 = Date.ValueOf('2016-02-11');
        Date date2 = Date.ValueOf('2016-02-10');
        Date ckdate = VerifyDate.CheckDates(date1,date2);
        
    }
}