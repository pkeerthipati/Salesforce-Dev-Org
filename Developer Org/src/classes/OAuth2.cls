/*
Author:Team TATA
Purpose:This class is used to get authentication detail Wrapper
*/
public with sharing class OAuth2 {
    
    public String id{get;set;}
    public String issued_at{get;set;}
    public String instance_url{get;set;}
    public String signature{get;set;}
    public String access_token{get;set;}    

}