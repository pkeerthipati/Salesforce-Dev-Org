({
	doInit : function(component, event, helper) {
		var action=component.get("c.findAll");
        action.setCallback(this, function(data) {
        component.set("v.contacts", data.getReturnValue());
		});
		$A.enqueueAction(action);
	},
    handlerComponentEventincontact : function(component, event, helper) {
        var msg = event.getParam("message");
        alert('msg'+msg);
        component.set("v.messageFromEvent",msg);
        
		
	},
    doSearch : function(component, event, helper) {
		var myEvent = $A.get("e.pradeeplightning:Searchkey");
        var action=component.get("c.findByName");
        action.setParams({"searchKey" : event.target.value})
        action.setCallback(this, function(data) {
        component.set("v.contacts", data.getReturnValue());
		});
		$A.enqueueAction(action);
	},
    doSearchById : function(component, event, helper) {
		var token = event.getParam("token");
        alert(token);
        var contId;
        if(token.indexOf('contact/') == 0){
            contId = token.substr(token.indexOf('/')+1);
            alert(contId);
        }
        var action=component.get("c.findById");
        action.setParams({"contactId" : contId})
        action.setCallback(this, function(data) {
        	alert('return'+data.getReturnValue());
            //component.set("v.contacts", data.getReturnValue());
		});
		$A.enqueueAction(action);
	}
    
})