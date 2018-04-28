({
    doInit : function(component,event,helper){
       // alert('do init get called');
       helper.callToServer(
            component,
            "c.findRecordTypes",
            function(response) {
                //alert(JSON.parse(response));
                var jsonObject=JSON.parse(response);
                component.set('v.recordTypeList',jsonObject);  
                component.set('v.selectedRecordType',jsonObject[0].recordTypeId); 
            }, 
            {objName: component.get('v.objType')}
        ); 
    },
     
    onChange : function(component, event, helper) {
		var value = event.getSource().get("v.text");
        component.set('v.selectedRecordType', value);
	},
    defaultCloseAction : function(component, event, helper) {
        //$A.util.addClass(component, "hideModal");
        $A.util.addClass(component, "slds-hide");
    },
    onconfirm : function(component, event, helper){
        //alert('confirm get called');
        var selectedRecType=component.get('v.selectedRecordType');
        alert('selected recordtype:'+selectedRecType+component.get('v.objType'));
        alert($A.get("e.force:createRecord"));
        var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": 'Account',              //'component.get('v.objType')'
            "recordTypeId":  selectedRecType						//selectedRecType
        });
        createRecordEvent.fire();
        
    }
})