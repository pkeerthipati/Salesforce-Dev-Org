trigger contactduplicate on Contact (before insert) {
List<String> emaillst = new List<String>();
for(Contact c:trigger.new){
emaillst.add(c.Email);
}
System.debug(emaillst);
}