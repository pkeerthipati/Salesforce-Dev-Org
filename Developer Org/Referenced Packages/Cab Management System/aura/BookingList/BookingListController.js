({
	getBookings : function(component, event, helper) {
		var action = component.get("c.getAllBookings");
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state=="SUCCESS"){
                component.set("v.bookings",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
        var actionSel = component.get("c.getSelectopt");        
        actionSel.setCallback(this,function(res){
            var state = res.getState();
            if(state == "SUCCESS"){
                var result = res.getReturnValue();
            	component.set("v.route",result.route);
				component.set("v.timeSlot",result.timeSlot);
				component.set("v.dropPoint",result.dropPoint);
				component.set("v.vehicle",result.vehicle);                
            }
        });
        $A.enqueueAction(actionSel);
	},
    reflectRoute:function(component,event,helper){        
		var route = component.get("v.routeId");
		helper.reflectRoute(component,route);        
    },
    reflectDropPoints:function(component,event,helper){        
		var dropPoint = component.get("v.dropPointId");
		helper.reflectDropPoints(component,dropPoint);        
    },
    reflectTimeSlot:function(component,event,helper){        
		var timeSlot = component.get("v.timeSlotId");
		helper.reflectTimeSlot(component,timeSlot);        
    },
    reflectVehicle:function(component,event,helper){        
		var vehicle = component.get("v.vehicleId");
		helper.reflectVehicle(component,vehicle);        
    },
    reflectDate:function(component,event,helper){
        var bookingDate = component.get("v.bookingDate");        
        if(bookingDate==null){            
            alert("Select A Date");
        }else{
            helper.reflectDate(component,bookingDate);
        }       
    },
    deleteList:function(component,event,helper){
        var dep1 = component.find("dependent");
        var listOfId = [];
	    for(var i=0;i<dep1.length;i++){	         
	        if(dep1[i].get("v.value")){
	        	listOfId.push(component.find("dependent")[i].get("v.text"));
            }  
        console.log('selectd id' + listOfId);
        } // for loop close 
        component.set("v.massDeleteList" , listOfId);       
        var delIdsPassInClass = component.get("v.massDeleteList");
        if(delIdsPassInClass.length===0){
            alert("Select atleast 1 record(s)");
        }
        var action = component.get("c.DeleteMass");
	    if(confirm("Are you sure?")){
            action.setParams({ 
               "delIDs" :  delIdsPassInClass
            });
        }
        action.setCallback(this, function(response) {
            var state = response.getState();
            //alert(state);
            if (state === "SUCCESS") {    
            }
        });
         $A.enqueueAction(action);
		component.updateList();
    },
})