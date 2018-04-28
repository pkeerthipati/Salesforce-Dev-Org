public class dcontroller {
    
    @AuraEnabled
    public static List<String> getpickval(ID accId) {
        List<String> options = new List<String>();
       
        List<Contact> contactResult = [Select Name from Contact where AccountID =:accId];
         options.add('Contact ('+ contactResult.size() + ')');
        for (Contact f: contactResult) {
            options.add(f.Name);
        }       
        return options;
    }
}