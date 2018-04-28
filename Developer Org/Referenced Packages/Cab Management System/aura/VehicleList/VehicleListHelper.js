({
	getVehicles : function(component) {
		var action=component.get("c.getVehicleList");//get data from controller
        action.setCallback(this, function(a) {            
            component.set("v.vehicles", a.getReturnValue());//set data in the page variable
        });
        $A.enqueueAction(action);
	},   
})