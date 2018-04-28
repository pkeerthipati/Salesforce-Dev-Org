({
	getDriver : function(component) {
		var action=component.get("c.getDriverList");//get data from controller
        action.setCallback(this, function(a) {
            component.set("v.drivers", a.getReturnValue());//set data in the page variable
        });
        $A.enqueueAction(action);
	},   
})