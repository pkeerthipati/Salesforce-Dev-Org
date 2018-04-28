Public Class AccountTriggerhelper{





public boolean CheckAccountEditable(){

String profileName=[Select Id,Name from Profile where Id=:UserInfo.getProfileId()].Name;
Map<String,string> sId = ApexPages.currentPage().getParameters();

system.debug('=====>'+profileName+sId);
return null;
}
}