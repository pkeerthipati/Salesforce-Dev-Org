trigger Test_AccountSyn on Account(before insert,before update,after insert , after update , after delete) 
{

if((Trigger.isBefore && Trigger.isInsert))
{

List<String> phoneList = new List<String>();
List<String> postalCodeList = new List<String>();
List<String> BillingCityList = new List<String>();
List<String> websiteList = new List<String>();

for (Account a : Trigger.new){

phoneList.add(a.phone);
postalCodeList.add(a.Billingpostalcode);
BillingCityList.add(a.BillingCity); 
websiteList.add(a.website);
}

List<Account>accList=[select name,phone,website,BillingState,BillingCity,BillingPostalCode from Account where phone IN: phoneList OR Billingpostalcode IN: postalCodeList OR website IN: websiteList OR BillingCity IN: BillingCityList];

for (Account acc: Trigger.New)
{
if(accList.size()>0)
{

for(Account at:accList)
{
if(at.phone==acc.phone&& at.Billingpostalcode==acc.Billingpostalcode && at.website==acc.website && at.BillingCity==acc.BillingCity){

acc.addError(' <font color="blue"> The Account is already exist </br></br>please find below</font></br><a href="__/'+at.id+'">'+at.Name+'</a>', FALSE);
}

} 
}
}
}
}