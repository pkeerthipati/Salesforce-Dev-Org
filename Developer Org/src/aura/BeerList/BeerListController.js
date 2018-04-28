({
    locationChange : function(component, event, helper) {
        alert('location changed');
        helper.getBeers(component);
    },
    pageChange: function(component, event, helper) {
        alert('page changed');
		var page = component.get("v.page") || 1;
        var direction = event.getParam("direction");
        page = direction === "previous" ? (page - 1) : (page + 1);
        helper.getBeers(component, page);
	},
    alcoholSelectionChange: function(component, event, helper) {
        alert('alcoholSelectionChange changed');
        helper.minAlcohol = event.getParam("minAlcohol");
        helper.getBeers(component);
	}
})