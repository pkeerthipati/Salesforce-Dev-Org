({
	createBooking: function(component, booking) {
		this.upsertBooking(component, booking, function(a) {
	        var bookings = component.get("v.bookings");
	        bookings.push(a.getReturnValue());
	        component.set("v.bookings", bookings);
            alert("Booking Done");
	      });
	},
    upsertBooking : function(component, booking, callback) {
	    var action = component.get("c.saveBooking");
	    action.setParams({
            "booking" : booking
        })
	    if (callback) {
	      action.setCallback(this,callback);
	    }
	    $A.enqueueAction(action);
	},
    
})