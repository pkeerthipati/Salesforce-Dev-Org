trigger OppCloneonClosedWon on Opportunity (after insert, after update){
    
    List<opportunity> opptoCloneList = new List<opportunity>();
    List<opportunity> insertOppCloneList = new List<opportunity>();
    
    for(Opportunity opp : trigger.new){
        if(opp.IsWon == true){
            opptoCloneList.add(opp);
        }
    }
    Id oppRTId = Schema.SObjectType.Opportunity.getRecordTypeInfosByName().get('Test opp record type').getRecordTypeId();
    for(Opportunity opp : opptoCloneList){
        Opportunity o = new Opportunity();
        List<Schema.FieldSetMember> fieldSetList = new List<Schema.FieldSetMember>();
        fieldSetList = SObjectType.Opportunity.FieldSets.pkeerthipati__Opp_Clone.getFields();
        o.StageName = 'Prospecting';
        o.closedate = system.today().addMonths(6);
        o.RecordTypeId = oppRTId;
        for(Schema.FieldSetMember fsM : fieldSetList){
            o.put(fsM.getFieldPath(),opp.get(fsM.getFieldPath()));
        }
        insertOppCloneList.add(o);
    }
    
    insert insertOppCloneList;
}