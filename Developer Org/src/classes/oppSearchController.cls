public with sharing class oppSearchController{
    @AuraEnabled
 
    public static List<Opportunity> getOpportunities(String OppStage , Integer Oppamount) {
    string stageopp = '\''+OppStage+'\'';
        List<Opportunity> opportunities =
                [SELECT Id, Name, CloseDate,Amount,StageName FROM Opportunity where Amount >: Oppamount and StageName =: OppStage];
        return opportunities;
    }
}