({
    createDriver:function(component, event, helper) {
		var nameField = component.find("DFName");
        var phoneField = component.find("Dphnnum");
        
        var nm = nameField.get("v.value");
        var ph = phoneField.get("v.value");
        if(nm==''){
            nameField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(ph==''){
            phoneField.set("v.errors", [{message:"This is a required Field."}]);
        }else{
            nameField.set("v.errors", null);
            phoneField.set("v.errors", null);
            var newDriver = component.get("v.newDriver");
            helper.createDriver(component,newDriver);
            var compEvent = component.getEvent("DriverEvent"); 
	    	compEvent.fire();
        } 
	},
    

    removeComponent : function(component,event,helper){
        var compEvent = component.getEvent("DriverEvent");
        compEvent.fire();        
    },
    getVehicle : function(component,event,helper) {
		helper.getVehicle(component);        
        helper.getDriver(component);
	},
     
})