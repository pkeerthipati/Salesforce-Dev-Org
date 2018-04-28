({
	calculate1 : function(component, event, helper) {
		var x = component.get("v.Amount");	
        var y = component.get("v.Tenure");
        var z = 0;
        if(y <= 12){
            z = x + 1000;
        }
        if(y > 12){
            z = x - 1000;
        }
        component.set("v.Maturity",z);
        alert(z);
        helper.showmessage1(x);
	},
    showmessage1 : function(a) {
		alert('Debugging');	
        alert(a);
        //alert(component.get("v.Maturity"));
	},
    showmessage2 : function() {
		alert('Helper method 2 is working');	
        
	}
    
})