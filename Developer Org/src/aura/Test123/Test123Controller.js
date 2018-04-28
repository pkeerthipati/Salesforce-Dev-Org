({
init : function(component, event, helper) {
    var action = component.get("c.getAccount");

    action.setParams({
        "assessmentId": component.get("v.recordId")
    });

    // Register the callback function
    action.setCallback(this, function(data) {
        component.set("v.acc", data.getReturnValue());
    });

    // Invoke the service
    $A.enqueueAction(action);
    
    var action1 = component.get("c.getAccountSource");
    var inputsel = component.find("InputSelectDynamic");
    var opts=[];
    action1.setCallback(this, function(a) {
        for(var i=0;i< a.getReturnValue().length;i++){
            opts.push({"class": "optionClass", label: a.getReturnValue()[i], value: a.getReturnValue()[i]});
        }
        inputsel.set("v.options", opts);

    });
    $A.enqueueAction(action1); 
}, 
save : function(component, event, helper) {

    var action = component.get("c.saveAccount");
    console.log('action',action);
    var name = component.get("v.acc"); //gets value of field
	console.log('name',name);
    action.setParams({"acc": name});
    $A.enqueueAction(action);

    console.log('save ran');
	location.reload();
},
    
    showModal :  function(component, event, helper){
//called on clicking your button
//run your form render code after that, run the following lines
helper.showPopupHelper(component, 'modaldialog', 'slds-fade-in-');
helper.showPopupHelper(component,'backdrop','slds-backdrop--');
},
    hidePopup :  function(component, event, helper){
//called on clicking your button
//run your form render code after that, run the following lines
helper.hidePopupHelper(component, 'modaldialog', 'slds-fade-in-');
helper.hidePopupHelper(component,'backdrop','slds-backdrop--');
}
})