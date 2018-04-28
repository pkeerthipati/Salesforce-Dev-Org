public Class ParentTaskRelatedListController{
    
    public task a;
    public Task t; 
    public List<task> childTasks {get; set;}

    public ParentTaskRelatedListController(ApexPages.StandardController controller) {
        
        this.a = (Task)controller.getRecord();
        
        t = new Task();
        t = this.a;
        
        system.debug('t'+t);
        
        childTasks = new List<Task>();
        getChildTasks();
    }
    
    public void getChildTasks(){
        
        childTasks = [Select Id,What.Name, WhatId, Who.Name, WhoId, Subject, Status, pkeerthipati__Parent_Task_Id__c from task where pkeerthipati__Parent_Task_Id__c =: t.ID];
        system.debug ('child tasks and t.Id'+childTasks+t.Id);
    }


}