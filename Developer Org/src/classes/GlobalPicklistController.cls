public class GlobalPicklistController {

public Account acc{get;set;}
public string selectedState{get;set;}
public List<SelectOption> statesLst {get;set;}
public void GlobalPicklistController(){
statesLst = new List<SelectOption>();
statesLst.add(new SelectOption('-None-','-None-'));
acc = [SELECT id, name, pkeerthipati__Global_Country__c, pkeerthipati__Global_State__c FROM Account WHERE id =: ApexPages.currentPage().getParameters().get('id')];

    Schema.DescribeFieldResult fieldResult = Account.pkeerthipati__SLA__c.getDescribe();
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      statesLst.add(new SelectOption(f.getLabel(), f.getValue()));
   }       
}
}