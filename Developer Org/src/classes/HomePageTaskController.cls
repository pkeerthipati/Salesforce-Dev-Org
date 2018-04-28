public class HomePageTaskController {

public List<task> lstUserParentTasks {get; set;}
public List<task> lstUserChildTasks {get; set;}
public List<Id> lstids {get; set;}

public void getParentTasks(){
    lstUserParentTasks = new List<task>();
    lstUserChildTasks = new List<task>();
    lstids = new List<Id>();
    lstUserChildTasks = [Select Id,What.Name,Who.Name,Subject,Status,pkeerthipati__Parent_Task_Id__c from task where OwnerId =: Userinfo.getuserId() and pkeerthipati__Parent_Task_Id__c != ''];

    for(task t: lstUserChildTasks){
        
        lstids.add(t.pkeerthipati__Parent_Task_Id__c);

    }
    lstUserParentTasks = [Select Id,What.Name,whatId,Who.Name,WhoId,Subject,Status,pkeerthipati__Parent_Task_Id__c from task where Id IN: lstids];
    system.debug('Parent Ids'+lstids);
}

public pagereference NewPage(){

PageReference newPage = new PageReference('/00T/e?retURL=%2Fhome%2Fhome.jsp');
    newPage.setRedirect(true);
    return newPage;

}

}