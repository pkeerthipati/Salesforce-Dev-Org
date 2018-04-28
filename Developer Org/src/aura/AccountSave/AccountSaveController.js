({
	myAction : function(component, event, helper) {
		 var action = component.get("c.save");
      //  alert(component.get("v.accObj.Name"));
       // alert(component.get("v.accObj.AccountNumber"));
        action.setParams({"accname":component.get("v.accObj.Name"),"accnumber":component.get("v.accObj.AccountNumber")});
       action.setCallback(this,function(response){
            var state = response.getState();
           
           if(state === "SUCCESS"){
			console.log(response.getReturnValue());                               
               component.set("v.accObj",response.getReturnValue());
           }
       });
      
        var homeEvent  = $A.get("e.force:navigateToObjectHome");
        homeEvent.setParams({"scope": "Account"});
        homeEvent.fire(); 
        // $A.enqueueAction(action);
	}
})