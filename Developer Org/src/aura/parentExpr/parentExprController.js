({
    updateParentAttr: function(cmp) {
        cmp.set("v.parentAttr", "updated parent attribute");
        var childCmp = cmp.find("cAttr")
 		childCmp.updateCAttr();
        
    }
})