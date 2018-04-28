({
	calculate1 : function(component, event, helper) {
    	helper.calculate1(component,event,helper);
        $A.util.addClass(component,'changeMe');
        $A.util.addClass(component.find("outNo"),'changeMe');
    },
    remClass : function(component, event, helper){
        alert('remove class');
        $A.util.removeClass(component,'changeMe');
        $A.util.addClass(component.find('text1'),'Toggle');
    },
    oninit : function(component, event, helper){
        
        alert('In init');
    },
    onRender : function(component, event, helper){
        alert('Render');
    },
    getContactName : function(component, event, helper){
        var action = component.get("c.refContactName");
        action.setParams({"cId" : component.get("v.Conid")});
        action.setCallback(this,function(a){
           component.set("v.ContactName",a.getReturnValue());    
        });
        
        $A.enqueueAction(action);
    },
    displayerror :  function(component, event, helper){
     	var inpCmp = component.find("tenure");  
        var val = inpCmp.get("v.value");
        alert(val);
        if(val > 21)
            inpCmp.set("v.errors",[{message:'Tenure should be numeric'}]);    
        
    }    
})