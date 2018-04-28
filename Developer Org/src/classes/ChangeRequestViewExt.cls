public with sharing class ChangeRequestViewExt {
    
    public Change_Request__c crRec {get;set;}
    public Components_Modified__c compRec {get;set;}
    public Task__c taskRec {get;set;}
    public Id compRecId{get;set;}
    public Id taskRecId{get;set;}
    
    private String crRecId;
    public List <Components_Modified__c> compList {get;set;}
    public List <Task__c> taskList {get;set;}
    
    public ChangeRequestViewExt(ApexPages.StandardController controller) 
    {
        compRec = new Components_Modified__c();
        crRecId = ((Change_Request__c )controller.getRecord()).Id;
        
        populateChangeRequest();
        populateComp();
        populateTask();
    }
    
    public void initiateComp()
    {
        compRec = new Components_Modified__c();
    }
    
    public void initiateTask()
    {
        taskRec = new Task__c();
    }
    
    public void populateComp()
    {
        compList = new List<Components_Modified__c>();
        if(crRec != null && crRecId != null)
        {
            compList = [Select Id, Name,  Component_Type__c, Explanation__c, Type_of_Modification__c from Components_Modified__c where Change_Request__c =: crRecId];
        } 
    }
    
    public void populateTask()
    {
        taskList = new List<Task__c>();
        if(crRec != null && crRecId != null)
        {
            taskList = [Select Id, Name,  Change_Request__c, Hours_Spent__c, Task_Worked__c from Task__c where Change_Request__c =: crRecId];
        } 
    }
    
    public void populateChangeRequest()
    {
        crRec = [Select Name,Description__c,Design_Solution__c,Type__c,Notes__c,
                     Status__c,Estimated_Effort__c,
                     Reviewed_By__c,Reviewed_By__r.Name,Functional_Review__c,
                     Owner.Name FROM Change_Request__c where Id =: crRecId];
    }
    
    public void updateChangeRequest()
    {
        try
        {
            if(crRec != null)
            {
                update crRec;
            }
        }
        catch(Exception e)
        {
            system.debug('Exception e: '+e.getMessage());
        }
    }
    
    public void deleteComp()
    {
        if(compRecId != null)
        {
            try
          {
              Components_Modified__c compRec = new Components_Modified__c(Id = compRecId);
                delete compRec;
                populateComp();
                
          }
            catch (exception e)
            {
                System.debug('Exception e: '+e.getMessage());
            }
        }
    }
    
    public void deleteTask()
    {
        if(taskRecId != null)
        {
            try
          {
              task__c taskRec = new Task__c(Id = taskRecId);
                delete taskRec;
                populateTask();
                
          }
            catch (exception e)
            {
                System.debug('Exception e: '+e.getMessage());
            }
        }
    }
    
    
    public void updateCompRec()
    {
        system.debug('Comp Rec: '+compRecId);
        if(compRecId != null)
        {
            compRec = [Select Id,Name,Component_Type__c,Explanation__c,Type_of_Modification__c,Change_Request__c from Components_Modified__c where Id=:compRecId];
        }
    }

    public void updateTaskRec()
    {
        system.debug('Comp Rec: '+taskRecId);
        if(taskRecId != null)
        {
            taskRec = [Select Id,Hours_Spent__c,Task_Worked__c,Change_Request__c from Task__c where Id=:taskRecId];
        }
    }
    
    public void saveComponent()
    {
        try
        {
          compRec.Change_Request__c = crRecId;
            upsert compRec Id;
            populateComp();
        }
        catch(Exception e)
        {
            system.debug('Exception e: '+e.getMessage());
        }
    }
    
    public void saveTask()
    {
        try
        {
          taskRec.Change_Request__c = crRecId;
            upsert taskRec Id;
            populateTask();
        }
        catch(Exception e)
        {
            system.debug('Exception e: '+e.getMessage());
        }
    }
    
}