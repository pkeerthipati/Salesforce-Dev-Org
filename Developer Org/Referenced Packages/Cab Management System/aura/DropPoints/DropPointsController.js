({
	getRoute : function(component, event, helper) {
        component.set("v.frameSrc","/apex/Webkul_cm__DropPointMap");
		var action = component.get("c.getAllRoutes");
        action.setCallback(this,function(response){
            component.set("v.Routes",response.getReturnValue());
        });       
        $A.enqueueAction(action);
        
	},
    reflectRoute : function(component, event, helper){
    	var val = component.get("v.routeId");        
        var d = new Date();
	    var n = d.getTime();
        component.set("v.frameSrc",'/apex/Webkul_cm__DropPointMap?t='+n+'&routeId='+val);
    },
    SaveRecords: function(component, event, helper){
        component.set("v.routeId","");
        component.set("v.frameSrc",'/apex/Webkul_cm__DropPointMap');      
        
        var actionSave = component.get("c.saveDropPoints");        
        actionSave.setCallback(this,function(response){
            var state = response.getState();
            if(state=="SUCCESS"){
                
            }
        });
        $A.enqueueAction(actionSave);
        var compEvent = component.getEvent("DropPointEvent");
        compEvent.fire();
    }
})