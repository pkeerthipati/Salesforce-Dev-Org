trigger AccountAddressTrigger on Account (before insert, before update) {

    for(Account a : trigger.new){
        if(a.BillingPostalCode != '' && a.Match_Billing_Address__c == true){
            a.ShippingPostalCode = a.BillingPostalCode;
            a.pkeerthipati__Global_Country__c = 'India';
            a.pkeerthipati__Global_State__c = 'Andhra Pradesh';
        }
    }
}