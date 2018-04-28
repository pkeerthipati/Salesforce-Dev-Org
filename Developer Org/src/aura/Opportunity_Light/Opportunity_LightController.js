({
 
    navigateToRecord : function(component, event, helper){
    var navEvt = $A.get("e.force:navigateToSObject");
     var selectedItem = event.currentTarget;
     var Name = selectedItem.dataset.record;
       
navEvt.setParams({
  "recordId": Name,
  "slideDevName": "detail"
});
navEvt.fire();
    },   
    getOpps: function(cmp){       
        cmp.set("v.showtbl","true");
        var action = cmp.get("c.getOpportunities");
        action.setParams({ OppStage : cmp.find("nameopp").get("v.value") , Oppamount : cmp.find("amntopp").get("v.value")});       
       
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.opportunities", response.getReturnValue());
            }
        });
<span class="lightn-buton" style="white-space: pre;"> </span> $A.enqueueAction(action);
    }
})