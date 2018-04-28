trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> insertTaskList = new List<Task>();
    for(Opportunity o : trigger.new){
        if(o.StageName == 'Closed Won'){
            Task t = new Task();
            t.WhatId      = o.Id;
            t.Subject     = 'Follow Up Test Task';
            t.Priority    = 'Normal';
            t.Status      = 'Not Started';
            insertTaskList.add(t);
        }
    }
    insert insertTaskList;
}