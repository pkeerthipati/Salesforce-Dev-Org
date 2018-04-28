({
	packItem : function(component, event, helper) {
		var newMessage = component.get("v.item");
        newMessage.Packed__c = true;
        console.log("handleClick2: Message: " + newMessage);
        component.get("v.item.Packed__c").set("v.item.Packed__c",true);
        
        
        component.find("inputButton").set("v.disabled",true);
	}
})