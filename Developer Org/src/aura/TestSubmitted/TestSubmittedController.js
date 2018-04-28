({
	init : function(component, event, helper) {
    console.log('Record Id',component.get("v.recordId"));
    var action = component.get("c.updateToSubmitted");

    action.setParams({
        "accId": component.get("v.recordId")
    });

    // Register the callback function
    action.setCallback(this, function(data) {
        console.log('action status',data.getReturnValue());
        //component.set("v.acc", data.getReturnValue());
        if(data.getReturnValue() == 'true'){
            console.log('In true');
            location.reload();
        }
    });

    // Invoke the service
    $A.enqueueAction(action);
    console.log('action status',action.getReturnValue());
    //    
}
})