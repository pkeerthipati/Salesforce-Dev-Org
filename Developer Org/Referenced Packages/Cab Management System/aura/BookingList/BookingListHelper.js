({
	reflectRoute: function(component,route){
        var action = component.get("c.getRouteBookings");
        action.setParams({
            "route" : route
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state=='SUCCESS'){
                component.set("v.bookings",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    reflectDropPoints: function(component,dropPoint){
        var action = component.get("c.getDropPointsBookings");
        action.setParams({
            "dropPoint" : dropPoint
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state=='SUCCESS'){
                component.set("v.bookings",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    reflectTimeSlot: function(component,timeSlot){
        var action = component.get("c.getTimeSlotBookings");
        action.setParams({
            "timeSlot" : timeSlot
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            console.log(state);
            if(state=='SUCCESS'){
                component.set("v.bookings",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    reflectVehicle: function(component,vehicle){
        var action = component.get("c.getVehicleBookings");
        action.setParams({
            "vehicle" : vehicle
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            console.log(state);
            if(state=='SUCCESS'){
                component.set("v.bookings",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    reflectDate: function(component,bookingDate){
        var action = component.get("c.getDateBookings");
        action.setParams({
            "bookingDate" : bookingDate
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state=='SUCCESS'){
				component.set("v.bookings",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },

})