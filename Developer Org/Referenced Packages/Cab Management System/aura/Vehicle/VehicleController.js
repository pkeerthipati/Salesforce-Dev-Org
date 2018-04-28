({
    createVehicle:function(component, event, helper) {
		var nameField = component.find("vName");
        var seatsField = component.find("vSeats");
        var licenseField = component.find("vLicense");
        var licenseDateField = component.find("vLicenseDate");
                       
        var nm = nameField.get("v.value");
        var st = seatsField.get("v.value");
        var lf = licenseField.get("v.value");
        var ld = licenseDateField.get("v.value");
        if(nm==''){
            nameField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(st==''){
            seatsField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(lf==''){
            licenseField.set("v.errors", [{message:"This is a required Field."}]);
        }else if(ld==''){
            licenseDateField.set("v.errors", [{message:"This is a required Field."}]);
        }else{
            nameField.set("v.errors", null);
            seatsField.set("v.errors", null);
            licenseField.set("v.errors", null);
            licenseDateField.set("v.errors", null);
            
            var newVehicle = component.get("v.newVehicle");
            helper.createVehicle(component,newVehicle);
            var compEvent = component.getEvent("sampleVehicleEvent"); 
	    	compEvent.fire();
        } 
	},
    
	getRoute : function(component, event, helper) {        
		var action = component.get("c.getAllRoutes");
        action.setCallback(this,function(response){
            component.set("v.Routes",response.getReturnValue());
        });       
        $A.enqueueAction(action);
	},
    
    removeComponent : function(component,event,helper){
        var compEvent = component.getEvent("sampleVehicleEvent");
        compEvent.fire();
        /*alert(compEvent);
	    $A.createComponent(
            "Webkul_cm:Vehicle",{},
            function(newcomponent){
                //Add the new button to the body array
                if (component.isValid()) {
                    var body = compEvent.get("v.body");
                    compEvent.set("v.body",[]);
                }
            }
        );*/
        
    },
    
})