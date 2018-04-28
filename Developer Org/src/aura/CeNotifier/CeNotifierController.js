({
	fireComponentEvent2 : function(cmp, event, helper) {
        var cmpEvent1 = cmp.getEvent("cmpEvent");
        cmpEvent1.setParams({"message":"A component event fired me!!!!!"});
       
		cmpEvent1.fire();
	}
})