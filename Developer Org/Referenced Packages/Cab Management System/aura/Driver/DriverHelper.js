({
	createDriver: function(component, driver) {
		this.upsertDriver(component, driver, function(a) {
	        var drivers = component.get("v.Driver");
	        drivers.push(a.getReturnValue());
	        component.set("v.Driver", drivers);
	      });
	},
    upsertDriver : function(component, driver, callback) {
	    var action = component.get("c.saveDriver");
	    action.setParams({
	        "driver": driver
	    });
	    if (callback) {
	      action.setCallback(this, callback);
	    }
	    $A.enqueueAction(action);
	},
    getVehicle:function(component){
        var action=component.get("c.getVehicleList");
        action.setCallback(this, function(response) {
            component.set("v.vehicles", response.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    getDriver:function(component){
        var action=component.get("c.getDriverList");
        action.setCallback(this, function(response) {
            component.set("v.Drivers", response.getReturnValue());
        });
        $A.enqueueAction(action);
    }
    
})