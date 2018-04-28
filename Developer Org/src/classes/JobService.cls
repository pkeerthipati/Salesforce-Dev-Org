Global Class JobService{

webservice static void insertJob(Id op_id)
{
pkeerthipati__Recruiting__c rec = [Select Id,name from pkeerthipati__Recruiting__c where Id =: op_id Limit 1];
pkeerthipati__Employee__c emp = new pkeerthipati__Employee__c();
emp.name = rec.name;
emp.pkeerthipati__Recruiting__c = rec.Id;
insert emp;
//return emp.id;
}
}