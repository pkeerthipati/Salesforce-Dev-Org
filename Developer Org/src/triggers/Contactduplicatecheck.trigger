trigger Contactduplicatecheck on Contact (Before Insert) {
List<String> emailLst = new List<String>();
List<String> lkpLst = new List<String>();
list<Account> acclst = new list<Account>();
List<Id> idLst = new List<Id>();
Contact c1= new Contact();
for(Contact c:trigger.new){
emailLst.add(c.Email);

acclst.add(c.Account);

}
System.debug('Emaillst'+emailLst);
for(Contact c:[Select Id,Email from Contact where Email=:emailLst and Email != '']){
lkpLst.add(c.Email);
}

System.debug('lkpLst'+lkpLst);
/*if(lkpLst.size()>0){
System.debug('in error');
c1.addError('Cannot add Contact as other contact exist with this Email');
}*/
System.debug('acclst'+acclst);
Integer i=0;
for (Contact c : Trigger.new) {

        if(acclst[i] != null){
        if (lkpLst[i] == c.Email) {
        
        if(acclst[i].Id == c.Account.Id){

            c.Email.addError('Contact cannot be created. A contact already exists with the same email address.');
        }
        }
     
    }
    i++;
}
}