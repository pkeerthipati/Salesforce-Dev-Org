({
	getDropPoints : function(component) {
		var action=component.get("c.getAllLocations");//get data from controller
        action.setCallback(this, function(a) {            
            component.set("v.dropPoints", a.getReturnValue());//set data in the page variable
        });
        $A.enqueueAction(action);
	},
    reflectDropPoints: function(component,route){
        var action = component.get("c.getDropPoint");
        action.setParams({
            "route" : route
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            if(state=='SUCCESS'){
                component.set("v.dropPoints",res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})