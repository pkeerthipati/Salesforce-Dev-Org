({
 
   /* On the component Load this function call the apex class method, 
    * which is return the list of RecordTypes of object 
    * and set it to the lstOfRecordType attribute to display record Type values
    * on ui:inputSelect component. */
 
   fetchListOfRecordTypes: function(component, event, helper) {
      var action = component.get("c.fetchRecordTypeValues");
      action.setCallback(this, function(response) {
         component.set("v.lstOfRecordType", response.getReturnValue());
         component.set('v.selectedRecordType',response.getReturnValue()[0]); 
      });
      $A.enqueueAction(action);
   },
 
   /* In this "createRecord" function, first we have call apex class method 
    * and pass the selected RecordType values[label] and this "getRecTypeId"
    * apex method return the selected recordType ID.
    * When RecordType ID comes, we have call  "e.force:createRecord"
    * event and pass object API Name and 
    * set the record type ID in recordTypeId parameter. and fire this event
    * if response state is not equal = "SUCCESS" then display message on various situations.
    */
   createRecord: function(component, event, helper) {
      
 		alert('Inside create');	
      var action = component.get("c.getRecTypeId");
      //var recordTypeLabel = component.find("selectid").get("v.value");
      var selectedRecType=component.get('v.selectedRecordType');
       alert('selecte record type==>'+selectedRecType);
       action.setParams({
         "recordTypeLabel": selectedRecType
      });
      action.setCallback(this, function(response) {
         var state = response.getState();
         alert(state);
          if (state === "SUCCESS") {
            var createRecordEvent = $A.get("e.force:createRecord");
            var RecTypeID  = response.getReturnValue();
            alert(RecTypeID);
              createRecordEvent.setParams({
               "entityApiName": 'Account',
               "recordTypeId": RecTypeID
            });
            createRecordEvent.fire();
             
         } else if (state == "INCOMPLETE") {
            var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
               "title": "Oops!",
               "message": "No Internet Connection"
            });
            toastEvent.fire();
             
         } else if (state == "ERROR") {
            var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
               "title": "Error!",
               "message": "Please contact your administrator"
            });
            toastEvent.fire();
         }
      });
      $A.enqueueAction(action);
   },
    
   onChange : function(component, event, helper) {
		var value = event.getSource().get("v.text");
        component.set('v.selectedRecordType', value);
	}, 
 
   /*closeModal: function(component, event, helper) {
      // set "isOpen" attribute to false for hide/close model box 
      window.reload();
   },*/
    
   removeCSS: function(cmp, event) {
        var cmpTarget = cmp.find('MainDiv');
        $A.util.removeClass(cmpTarget, 'slds-modal__container');
    }, 
 
   openModal: function(component, event, helper) {
      // set "isOpen" attribute to true to show model box
      component.set("v.isOpen", true);
   },
})