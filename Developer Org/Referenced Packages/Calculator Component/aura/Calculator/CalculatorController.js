({
doneRendering: function(cmp, event, helper) {
if(!cmp.get("v.isDoneRendering")){
cmp.set("v.isDoneRendering", true);
    
    
    setTimeout(function(){
    

    renderingCtrlPanl();
bindClickEventToCtrlPanlBtns();

	renderingNumPanl();

	bindClickEventToNumPanlBtns();

	renderingOperPanl();

	bindClickEventToOperPanlBtns();
    }, 1000);

}
}
    
    
    
    
})