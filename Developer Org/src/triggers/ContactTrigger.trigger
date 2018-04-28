trigger ContactTrigger on Contact(before insert,after insert,before update, after update, after delete) {
    ContactTriggerHelper conT = new ContactTriggerHelper();
    conT.performActions(trigger.new,trigger.old,trigger.newMap,trigger.oldMap,trigger.isBefore,trigger.isAfter,trigger.isInsert,trigger.isUpdate,trigger.isDelete);
}