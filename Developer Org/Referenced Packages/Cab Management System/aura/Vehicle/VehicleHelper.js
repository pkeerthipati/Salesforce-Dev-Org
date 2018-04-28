({
	createVehicle: function(component, vehicle) {
		this.upsertVehicle(component, vehicle, function(a) {
	        var vehicles = component.get("v.vehicles");
	        vehicles.push(a.getReturnValue());
	        component.set("v.vehicle", vehicles);
	      });
	},
    upsertVehicle : function(component, vehicle, callback) {
	    var action = component.get("c.saveVehicle");
	    action.setParams({
	        "vehicle": vehicle
	    });
	    if (callback) {
	      action.setCallback(this, callback);
	    }
	    $A.enqueueAction(action);
	},
    
})