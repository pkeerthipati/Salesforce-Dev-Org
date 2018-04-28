({
	searchKeyChange : function(component, event, helper) {
        var myEvent = $A.get("e.pradeeplightning:Searchkey");	
        console.log('Event fired'+event.target.value);
        myEvent.setParams({"searchkey1":event.target.value});
        myEvent.fire();
	}
})