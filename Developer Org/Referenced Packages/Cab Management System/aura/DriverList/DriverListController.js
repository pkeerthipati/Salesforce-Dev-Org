({	
    getDriver:function(component, event, helper) {
        helper.getDriver(component);
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