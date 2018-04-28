public class ContactController1 {
@AuraEnabled
    public static list<contact> findAll(){
        return [select id,name,phone from contact limit 20];
    }
 @AuraEnabled
    public static list<contact> findByName(String searchKey){
        String name='%'+searchKey+'%';
        return [select id,name,phone from contact where name like :name LIMIT 50];
    }
 @AuraEnabled
    public static contact findById(String contactId){
        system.debug('ContactId==>'+contactId);
        return [select id,Name,Title,Phone,mobilephone,Account.name from contact where id=:contactId];
    }
}