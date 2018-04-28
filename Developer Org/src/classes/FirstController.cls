public class FirstController {


public String givenAccount {get; set;}
public String givenContact {get; set;}
public String givenPursuit {get; set;}
public boolean bool{get;set;}

public FirstController(){
bool = false;

}
public void displayText(){

bool = true;

Account a = new Account();
a.Name = givenAccount;
insert a;

system.debug('Account a is inserted and the id is'+a.id);

Contact c = new Contact();
c.lastname = givenContact;
c.firstname = 'Testing';
c.AccountID = a.Id;
insert c;


pkeerthipati__Pursuit__c p = new pkeerthipati__Pursuit__c();
p.Name = givenPursuit;
p.pkeerthipati__Expected_Revenue__c = 1000000;
p.pkeerthipati__Opportunity__c = '0069000000Fjz34';
insert p;
}

}