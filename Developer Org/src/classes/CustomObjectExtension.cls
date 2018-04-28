public class CustomObjectExtension {

    public CustomObjectExtension(ApexPages.StandardController controller) {
    
    Id sid = ApexPages.Currentpage().getparameters().get('Id');
    system.debug('sid'+sid);

    }

}