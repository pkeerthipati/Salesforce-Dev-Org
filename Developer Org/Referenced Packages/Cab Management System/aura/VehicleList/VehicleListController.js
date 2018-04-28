({
	/*getCompnent: function(cmp,event) {
        $A.createComponent(
            "Webkul_cm:Vehicle",{},
            function(newcomponent){
                //Add the new button to the body array
                if (cmp.isValid()) {
                    var body = cmp.get("v.body");
                    body.push(newcomponent);
                    cmp.set("v.body", body);
                }
            }
        );
        var cmpTarget = cmp.find('Modalbox');
       	var cmpBack = cmp.find('MB-Back');
        $A.util.addClass(cmpTarget, 'slds-fade-in-open');
        $A.util.addClass(cmpBack, 'slds-backdrop--open');
    },
    removeComponent:function(cmp,event){
        var cmpBody=cmp.find("cmpBody");
        $A.createComponent(
            "Webkul_cm:Vehicle",{},
            function(newcomponent){
                //Add the new button to the body array
                if (cmp.isValid()) {
                    var body = cmpBody.get("v.body");
                    cmpBody.set("v.body",[]);
                }
            }
        );
        
        var cmpTarget = cmp.find('Modalbox');
       	var cmpBack = cmp.find('MB-Back');
        $A.util.removeClass(cmpBack,'slds-backdrop--open');
	    $A.util.removeClass(cmpTarget, 'slds-fade-in-open');
        cmp.updateList();
        
        return cmpBody;
    },
    /*createVehicle:function(cmp,event){
        $A.createComponent(
            "Webkul_cm:Vehicle",{},
            function(newcomponent){
                //Add the new button to the body array
                if (cmp.isValid()) {
                    var body = cmp.get("v.body");
                    cmp.set("v.body",[]);
                }
            }
        );
        var cmpTarget = cmp.find('Modalbox');
       	var cmpBack = cmp.find('MB-Back');
        $A.util.removeClass(cmpBack,'slds-backdrop--open');
	    $A.util.removeClass(cmpTarget, 'slds-fade-in-open');
        cmp.updateList();
    },*/
    getVehicle:function(component, event, helper) {
        helper.getVehicles(component);
    },
    
    applycss:function(cmp,event){
        var cmpTarget = cmp.find('Modalbox');
       	var cmpBack = cmp.find('MB-Back');
        $A.util.addClass(cmpTarget, 'slds-fade-in-open');
        $A.util.addClass(cmpBack, 'slds-backdrop--open');
    },
    handleremovecss:function(cmp,event){
	    var cmpTarget = cmp.find('Modalbox');
       	var cmpBack = cmp.find('MB-Back');
        $A.util.removeClass(cmpBack,'slds-backdrop--open');
	    $A.util.removeClass(cmpTarget, 'slds-fade-in-open');
        cmp.updateList();
	},
    checkAll:function(component,event,helper){
        var master= component.find("master");
        var dep= component.find("dependent");
        var val= master.get("v.value");
        if(val==true){
            for(var i=0;i<dep.length;i++){
                dep[i].set("v.value",true);
            }
        }else{
           for(var i=0;i<dep.length;i++){
                dep[i].set("v.value",false);
            } 
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