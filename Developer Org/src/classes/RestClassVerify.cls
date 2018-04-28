public class RestClassVerify{
     @future(callout=true)
    public static void accountUpdate()
    {
        
        System.debug('### Execution started for accountUpdate() method in DEUpdateAccountFromAgreement class');
            String reqbody;
            String destUrl;
            
            //System.Debug(newVar);
            
                    //Getting integration user details from managed package
                    system.debug('Entercheck===');
                    
                    String clientId='3MVG9Y6d_Btp4xp4vmTLPAggDnayPFdJ89XXGjC4FmkfaoihtVPPBP8ElS_Tv4F5aMQQD4PL5a_IOkCEgPrx0';
                    String clientSecret='473813685605370940';
                    String username='bangarrajuk@dskvap.com';
                    String password='Aug@2016SFZjRsyiugkLL5iYXfu5LnxYk';
                    destUrl='https://rajudomain-dev-ed.my.salesforce.com';
                    
                    reqBody= 'grant_type=password&client_id='+clientId+'&client_secret='+
                               clientSecret+'&username='+username+'&password='+password;
                    system.debug('reqBody======'+reqBody);
                    system.debug('destUrl==='+destUrl);
                       
                    Http h=new Http();
                    HttpRequest hreq=new HttpRequest();
                    hreq.setBody(reqBody);
                    hreq.setMethod('POST');
                    hreq.setEndpoint(destUrl+'/services/oauth2/token');
                    
                    HttpResponse res = h.send(hreq);
                   
                    system.debug('jags'+res.getBody());
                    
                    OAuth2 objAuthInfo;
                    system.debug('getStatusCode====='+res.getStatusCode());
                    if(res.getStatusCode()==200)
                    {
                        objAuthInfo=(OAuth2)JSON.deserialize(res.getbody(),OAuth2.class);
                       System.debug('objAuthInfo'+objAuthInfo);
                    }
                    
                    Http h1=new Http();
                    HttpRequest hreq1=new HttpRequest();
                    hreq1.setHeader('Authorization','Bearer '+objAuthInfo.access_token);
                    hreq1.setHeader('Content-Type','application/json');
                    hreq1.setHeader('accept','application/json');
                    account objacc = new account();
                    objacc.name='Raju Rest';
                    string strAccount = JSON.serialize(objacc);
                    hreq1.setBody(strAccount);
                    hreq1.setMethod('POST');
                    hreq1.setEndpoint('https://rajudomain-dev-ed.my.salesforce.com/services/apexrest/MyOrgPackage/Account');
                    //Sending the Request to the destination org(EU)
                    HttpResponse hres=h1.send(hreq1);
                    system.debug('hres==='+hres.getBody());
                    Http h2 = new Http();
                    HttpRequest hreq2 = new HttpRequest();
                    hreq2.setHeader('Authorization','Bearer '+objAuthInfo.access_token);
                    hreq2.setHeader('Content-Type','application/json');
                    hreq2.setHeader('accept','application/json');
                    hreq2.setMethod('GET');
                    //hreq1.setBody('');
                    hreq2.setEndpoint('https://rajudomain-dev-ed.my.salesforce.com/services/apexrest/MyOrgPackage/Account/0019000000lpujn');
                    HttpResponse hres2 = h2.send(hreq2);
                    system.debug('hres=11=='+hres2.getBody());
                    
                
            }
}