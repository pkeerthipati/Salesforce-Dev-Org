public class RandomContactFactory{
    public static List<Contact> generateRandomContacts(Integer numCts, String lName) {
        List<Contact> cts = new List<Contact>();
        
        for(Integer i=0;i<numCts;i++) {
            Contact c = new Contact(FirstName='Test' + i,LastName=lName);
            cts.add(c);
        }
        
        
        return cts;
    }
}