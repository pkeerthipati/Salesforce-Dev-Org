({
	getMap : function(component, event, helper) {
        helper.getMap(component);		
	},
    reflectRoute : function(component, event, helper){
    	var val = component.get("v.routeName");        
        var d = new Date();
	    var n = d.getTime();
        component.set("v.frameSrc",'/apex/Webkul_cm__RouteMap?t='+n+'&routename='+val);
    },
    SaveRecords: function(component, event, helper){
        var routename = component.get("v.routeName");  
        if(routename!=null && routename!=''){            
            component.set("v.routeName","");
            helper.getMap(component);	
            var compEvent = component.getEvent("RouteEvent");
            compEvent.fire();
        }else{
            alert("Route Name is Required!");
        }
    }
    
})