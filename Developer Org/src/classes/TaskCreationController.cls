Public Class TaskCreationController{

    public String taskIds { get; set; }

    public TaskCreationController() {
    
    taskList = new List<task>();
    parentTask = new Task();

    }

public List<Task> taskList {get; set;} 
public Task parentTask {get; set;}
public TasksId__c taskCustomSetting = new TasksId__c();

public void addNewTask()
    {
        
        Task t = new Task();
        taskList.add(t);
    }
    
public pagereference insertTasks()
    {
       insert taskList;
        taskIds = '';
        for(task t : taskList)
            {
                taskIds = taskIds + t.Id + ',';  
            }    
        taskIds = taskIds.substring(0,taskIds.length()-1);  
        taskCustomSetting = [Select Id, pkeerthipati__FieldsID__c From TasksId__c];
        taskCustomSetting.pkeerthipati__FieldsID__c = taskIds;
        update  taskCustomSetting;
        system.debug('String Ids'+taskIds+taskCustomSetting); 
     return page.MaintaskCreationPage;
    }   
    
    public pagereference createParentTask(){
    
    insert parentTask;
    
    system.debug('Parent Task'+parentTask+taskCustomSetting.pkeerthipati__FieldsID__c); 
    List<ID> lIds = new List<ID>();
    taskCustomSetting = [Select Id, pkeerthipati__FieldsID__c From TasksId__c];
    if(taskCustomSetting.pkeerthipati__FieldsID__c != '' && taskCustomSetting.pkeerthipati__FieldsID__c != NULL)
    {
    lIds = taskCustomSetting.pkeerthipati__FieldsID__c.split(',');
    for(ID i:lIds){
        task t = new task();
        t = [Select Id, pkeerthipati__Parent_Task_Id__c from Task where Id =: i];
        t.pkeerthipati__Parent_Task_Id__c = parentTask.id;
        update t;
    
    }
    }
       taskCustomSetting.pkeerthipati__FieldsID__c = '';
       update taskCustomSetting;
       PageReference newocp = new PageReference('/'+parentTask.id);
        newocp.setRedirect(true);
        return newocp;
    }
    
public void debug(){
    
    
    system.debug('String Ids'+taskIds); 
}     
}