({	
    getList : function(cmp, evt, helper) {		
        var action = cmp.get("c.getSelectopt");        
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state == "SUCCESS"){
                var result = res.getReturnValue();
            	cmp.set("v.route",result.route);
				cmp.set("v.timeSlot",result.timeSlot);                
            }
        });
        $A.enqueueAction(action);               
	},    
    getdrop : function(cmp,evt,helper){
        var action = cmp.get("c.getdepDrop");
        var routeId = cmp.get("v.newBooking.Webkul_cm__Route__c");        
        if(routeId!=''){
            action.setParams({
                "routeId" : routeId 
            });
        }else{
            alert("Select any option other than '--None--'");
        }
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state == "SUCCESS"){
            	cmp.set("v.dropPoint",res.getReturnValue());             
            }
        });
        $A.enqueueAction(action);
    },
    getVehicle : function(cmp,evt,helper){
    	var action = cmp.get("c.getdepVeh");
        var Slot = cmp.get("v.newBooking.Webkul_cm__Time_Slot__c");
        var routeId = cmp.get("v.newBooking.Webkul_cm__Route__c");
        var bookingDate = cmp.get("v.newBooking.Webkul_cm__Booking_Date__c");
        if(Slot!=''){
            action.setParams({
                "slot" : Slot,
                "routeId" : routeId,
                "bookDate": bookingDate
            });
        }else{
            alert("Select any option other than '--None--'");            
        }
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state == "SUCCESS"){
            	cmp.set("v.vehicle",res.getReturnValue());             
            }
        });
        $A.enqueueAction(action);
    },
    createBooking : function(component,event,helper){
        var routeField = component.find("route");
        var dropPointField = component.find("dropPoint");
        var timeslotField = component.find("timeslot");
        var vehicleField = component.find("vehicle");        
        var dateField = component.find("dateField");
        var df = dateField.get("v.value");      
        var bDate = Date.parse(df);

		var rt = routeField.get("v.value");
        var dp = dropPointField.get("v.value");
        var ts = timeslotField.get("v.value");
        var ve = vehicleField.get("v.value");
        
        if(bDate < Date()){
			dateField.set("v.errors", [{message:"Booking Should be done in present or future dates"}]);       
        }else if(rt==''){
            routeField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(dp==''){
            dropPointField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(ts==''){
            timeslotField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(ve==''){
            vehicleField.set("v.errors", [{message:"This is a required Field."}]);
        }else{
            dateField.set("v.errors", [{message:null}]);
            routeField.set("v.errors", null);
            dropPointField.set("v.errors", null);
            timeslotField.set("v.errors", null);
            vehicleField.set("v.errors", null);
            
            var newBooking = component.get("v.newBooking");            
            helper.createBooking(component,newBooking);            
        }
    },
})