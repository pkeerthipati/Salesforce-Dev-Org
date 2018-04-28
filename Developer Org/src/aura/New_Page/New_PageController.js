({
    doInit : function(component, event, helper) {
        alert('record Id'+component.get("v.recordId"));
        var action = component.get("c.getpickval");
action.setParams({
            accId: component.get("v.recordId")
        });
        var inputsel = component.find("InputSelectDynamic");
        var opts=[];
        action.setCallback(this, function(a) {
            for(var i=0;i< a.getReturnValue().length;i++){
                opts.push({"class": "optionClass", label: a.getReturnValue()[i], value: a.getReturnValue()[i]});
            }
            inputsel.set("v.options", opts);
        });
        $A.enqueueAction(action); 
        }
})