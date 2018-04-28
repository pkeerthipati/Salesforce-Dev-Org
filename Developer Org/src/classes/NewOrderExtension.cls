public class NewOrderExtension{
    public user u {get; set;}

    public NewOrderExtension(ApexPages.StandardController controller) {
    
        u = new user();
        u = [select Id, Name, Phone, Email from User Where Id =: UserInfo.getUserId()];    
    }


}