public with sharing class Cmemberstatus_Controller

{



    Public campaign cmp{get;set;}

    public Boolean displayPopup {get;set;}

    public CustomCampaignMemberStatus__c cms{get;set;}

    //public List<CustomCampaignMemberStatus__c> newStatus{get;set;}

    public List<CampaignWrapper> cWList {get;set;}

     public boolean openpopup{get;set;}

     public string status{get;set;}

     public boolean responded{get;set;}

     public boolean def{get;set;}

     

 

     public Cmemberstatus_Controller(ApexPages.StandardController controller)

    {

        cms = new CustomCampaignMemberStatus__c();

        cWList = new List<CampaignWrapper>();

        cWList.add(new CampaignWrapper('Sent',false,false));

        cWList.add(new CampaignWrapper('Responded',false,false));

        cWList.add(new CampaignWrapper('Replied',false,false));

       

         /*CustomCampaignMemberStatus__c newStatus = new CustomCampaignMemberStatus__c(

   

    Label__c='New',

    IsDefault__c=false,

    HasResponded__c=false,

    SortOrder__c=18);*/

    }



    public pagereference showpopup()

    {

        openpopup = true;
        return null;
    }

    

    public pagereference addStatus()

    {
        system.debug('inside add status @@@@@@@@'+cWList);
        cWList.add(new CampaignWrapper(status,responded,def));
        system.debug('inside add status ########'+cWList);
        
        closePopup();
        return null;
    }

   

    public pagereference closePopup()

    {

        openpopup = false;
        return null;
    }

   

    public Class CampaignWrapper{

    public string Status{get;set;}

    public boolean responded{get;set;}

    public boolean def{get;set;}

   

    public CampaignWrapper(string s,boolean r,boolean d){

            status = s;

            responded = r;

            def = d;

    }

       

    }



   



}