({
	showPopupHelper: function(component, componentId, className){ 
        var modal = component.find(componentId); 
        $A.util.removeClass(modal, className+'hide'); 
        $A.util.addClass(modal, className+'open'); 
 },
    hidePopupHelper: function(component, componentId, className){ 
        var modal = component.find(componentId); 
        $A.util.removeClass(modal, className+'open'); 
        $A.util.addClass(modal, className+'hide'); 
 }
})