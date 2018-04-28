({
	doInit : function(cmp) {
    	// Initialize input select options
    	var resultCmp = cmp.find("singleResult");
        resultCmp.set("v.value", "No Value Selected");
        
    },

	onSingleSelectChange: function(cmp) {
         var selectCmp = cmp.find("InputSelectSingle");
         var resultCmp = cmp.find("singleResult");
         resultCmp.set("v.value", selectCmp.get("v.value"));
	 },
    
    
})