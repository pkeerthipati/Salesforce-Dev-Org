//Generated by wsdl2apex

public class wwwLantecUkNet {
    public class UploadSagePayOrder_element {
        public String SecureCode;
        public String Type_x;
        public String Company;
        public String MerchantName;
        public String Address1;
        public String Address2;
        public String Address3;
        public String Address4;
        public String ConfirmationEmail;
        public String SiteContact;
        public String ContactPhone;
        public String MID;
        public String TID;
        public String ZontalkAppName;
        public String BOMTemplate;
        public String SerialNo1;
        public String SerialNo2;
        public String SerialNo3;
        public String SerialNo4;
        public String PartNo1;
        public String PartNo2;
        public String PartNo3;
        public String PartNo4;
        public String ExtraTests;
        public String ShipAddress1;
        public String ShipAddress2;
        public String ShipAddress3;
        public String ShipAddress4;
        public String ShipContactName;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Type_x_type_info = new String[]{'Type','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Company_type_info = new String[]{'Company','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] MerchantName_type_info = new String[]{'MerchantName','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Address1_type_info = new String[]{'Address1','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Address2_type_info = new String[]{'Address2','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Address3_type_info = new String[]{'Address3','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Address4_type_info = new String[]{'Address4','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ConfirmationEmail_type_info = new String[]{'ConfirmationEmail','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SiteContact_type_info = new String[]{'SiteContact','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ContactPhone_type_info = new String[]{'ContactPhone','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] MID_type_info = new String[]{'MID','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] TID_type_info = new String[]{'TID','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ZontalkAppName_type_info = new String[]{'ZontalkAppName','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] BOMTemplate_type_info = new String[]{'BOMTemplate','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SerialNo1_type_info = new String[]{'SerialNo1','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SerialNo2_type_info = new String[]{'SerialNo2','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SerialNo3_type_info = new String[]{'SerialNo3','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SerialNo4_type_info = new String[]{'SerialNo4','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] PartNo1_type_info = new String[]{'PartNo1','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] PartNo2_type_info = new String[]{'PartNo2','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] PartNo3_type_info = new String[]{'PartNo3','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] PartNo4_type_info = new String[]{'PartNo4','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ExtraTests_type_info = new String[]{'ExtraTests','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ShipAddress1_type_info = new String[]{'ShipAddress1','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ShipAddress2_type_info = new String[]{'ShipAddress2','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ShipAddress3_type_info = new String[]{'ShipAddress3','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ShipAddress4_type_info = new String[]{'ShipAddress4','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ShipContactName_type_info = new String[]{'ShipContactName','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','Type_x','Company','MerchantName','Address1','Address2','Address3','Address4','ConfirmationEmail','SiteContact','ContactPhone','MID','TID','ZontalkAppName','BOMTemplate','SerialNo1','SerialNo2','SerialNo3','SerialNo4','PartNo1','PartNo2','PartNo3','PartNo4','ExtraTests','ShipAddress1','ShipAddress2','ShipAddress3','ShipAddress4','ShipContactName'};
    }
    public class UploadSagePayOrderResponse_element {
        public String UploadSagePayOrderResult;
        private String[] UploadSagePayOrderResult_type_info = new String[]{'UploadSagePayOrderResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadSagePayOrderResult'};
    }
    public class GetOrderStatus_element {
        public String SecureCode;
        public Integer OrderId;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] OrderId_type_info = new String[]{'OrderId','http://www.lantec-uk.net/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','OrderId'};
    }
    public class UploadOrderDetailResponse_element {
        public String UploadOrderDetailResult;
        private String[] UploadOrderDetailResult_type_info = new String[]{'UploadOrderDetailResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadOrderDetailResult'};
    }
    public class GetOrderStatusResponse_element {
        public String GetOrderStatusResult;
        private String[] GetOrderStatusResult_type_info = new String[]{'GetOrderStatusResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'GetOrderStatusResult'};
    }
    public class ChangeOrderDeliveryAddress_element {
        public String SecureCode;
        public String ProjectCode;
        public String ClientJobNo;
        public String ClientRef;
        public String DelCompany;
        public String DelSiteName;
        public String DelAddress1;
        public String DelAddress2;
        public String DelTown;
        public String DelCounty;
        public String DelPostCode;
        public String DelCountry;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ProjectCode_type_info = new String[]{'ProjectCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientJobNo_type_info = new String[]{'ClientJobNo','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientRef_type_info = new String[]{'ClientRef','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelCompany_type_info = new String[]{'DelCompany','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelSiteName_type_info = new String[]{'DelSiteName','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelAddress1_type_info = new String[]{'DelAddress1','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelAddress2_type_info = new String[]{'DelAddress2','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelTown_type_info = new String[]{'DelTown','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelCounty_type_info = new String[]{'DelCounty','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelPostCode_type_info = new String[]{'DelPostCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DelCountry_type_info = new String[]{'DelCountry','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','ProjectCode','ClientJobNo','ClientRef','DelCompany','DelSiteName','DelAddress1','DelAddress2','DelTown','DelCounty','DelPostCode','DelCountry'};
    }
    public class GetCourierStatus_element {
        public String SecureCode;
        public Integer OrderId;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] OrderId_type_info = new String[]{'OrderId','http://www.lantec-uk.net/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','OrderId'};
    }
    public class UploadOrder_element {
        public String SecureCode;
        public String ProjectCode;
        public String ClientJobNumber;
        public String ClientRef;
        public String Reseller;
        public String Company;
        public String SiteName;
        public String Address1;
        public String Address2;
        public String Town;
        public String County;
        public String PostCode;
        public String Country;
        public String MerchantID;
        public String OpeningTimes;
        public String SiteContact;
        public String ContactPhoneNo;
        public String ConfirmationEmail;
        public String Configuration;
        public String CollectFromWarehouse;
        public String ShipToEngineer;
        public String DespatchService;
        public String DespatchDate;
        public String CourierInstructions;
        public String JobDate;
        public String JobDescription;
        public String JobEngineer;
        public String Mobile;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ProjectCode_type_info = new String[]{'ProjectCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientJobNumber_type_info = new String[]{'ClientJobNumber','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientRef_type_info = new String[]{'ClientRef','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Reseller_type_info = new String[]{'Reseller','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Company_type_info = new String[]{'Company','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SiteName_type_info = new String[]{'SiteName','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Address1_type_info = new String[]{'Address1','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Address2_type_info = new String[]{'Address2','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Town_type_info = new String[]{'Town','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] County_type_info = new String[]{'County','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] PostCode_type_info = new String[]{'PostCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Country_type_info = new String[]{'Country','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] MerchantID_type_info = new String[]{'MerchantID','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] OpeningTimes_type_info = new String[]{'OpeningTimes','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] SiteContact_type_info = new String[]{'SiteContact','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ContactPhoneNo_type_info = new String[]{'ContactPhoneNo','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ConfirmationEmail_type_info = new String[]{'ConfirmationEmail','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Configuration_type_info = new String[]{'Configuration','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] CollectFromWarehouse_type_info = new String[]{'CollectFromWarehouse','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ShipToEngineer_type_info = new String[]{'ShipToEngineer','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DespatchService_type_info = new String[]{'DespatchService','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] DespatchDate_type_info = new String[]{'DespatchDate','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] CourierInstructions_type_info = new String[]{'CourierInstructions','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] JobDate_type_info = new String[]{'JobDate','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] JobDescription_type_info = new String[]{'JobDescription','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] JobEngineer_type_info = new String[]{'JobEngineer','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Mobile_type_info = new String[]{'Mobile','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','ProjectCode','ClientJobNumber','ClientRef','Reseller','Company','SiteName','Address1','Address2','Town','County','PostCode','Country','MerchantID','OpeningTimes','SiteContact','ContactPhoneNo','ConfirmationEmail','Configuration','CollectFromWarehouse','ShipToEngineer','DespatchService','DespatchDate','CourierInstructions','JobDate','JobDescription','JobEngineer','Mobile'};
    }
    public class ApproveOrderResponse_element {
        public String ApproveOrderResult;
        private String[] ApproveOrderResult_type_info = new String[]{'ApproveOrderResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'ApproveOrderResult'};
    }
    public class GetCourierStatusResponse_element {
        public String GetCourierStatusResult;
        private String[] GetCourierStatusResult_type_info = new String[]{'GetCourierStatusResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'GetCourierStatusResult'};
    }
    public class CancelOrderResponse_element {
        public String CancelOrderResult;
        private String[] CancelOrderResult_type_info = new String[]{'CancelOrderResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'CancelOrderResult'};
    }
    public class GetReport_element {
        public String SecureCode;
        public String QCode;
        public String QParams;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] QCode_type_info = new String[]{'QCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] QParams_type_info = new String[]{'QParams','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','QCode','QParams'};
    }
    public class UploadOrderDetail_element {
        public String SecureCode;
        public String ProjectCode;
        public String ClientJobNo;
        public String Service;
        public String PartNo;
        public String Qty;
        public String ClientRef;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ProjectCode_type_info = new String[]{'ProjectCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientJobNo_type_info = new String[]{'ClientJobNo','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Service_type_info = new String[]{'Service','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] PartNo_type_info = new String[]{'PartNo','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] Qty_type_info = new String[]{'Qty','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientRef_type_info = new String[]{'ClientRef','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','ProjectCode','ClientJobNo','Service','PartNo','Qty','ClientRef'};
    }
    public class CancelOrder_element {
        public String SecureCode;
        public Integer OrderId;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] OrderId_type_info = new String[]{'OrderId','http://www.lantec-uk.net/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','OrderId'};
    }
    public class ApproveOrder_element {
        public String SecureCode;
        public String ProjectCode;
        public String ClientJobNo;
        public String ClientRef;
        private String[] SecureCode_type_info = new String[]{'SecureCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ProjectCode_type_info = new String[]{'ProjectCode','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientJobNo_type_info = new String[]{'ClientJobNo','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] ClientRef_type_info = new String[]{'ClientRef','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'SecureCode','ProjectCode','ClientJobNo','ClientRef'};
    }
    public class UploadOrderResponse_element {
        public String UploadOrderResult;
        private String[] UploadOrderResult_type_info = new String[]{'UploadOrderResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadOrderResult'};
    }
    public class ChangeOrderDeliveryAddressResponse_element {
        public String ChangeOrderDeliveryAddressResult;
        private String[] ChangeOrderDeliveryAddressResult_type_info = new String[]{'ChangeOrderDeliveryAddressResult','http://www.lantec-uk.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.lantec-uk.net/','true','false'};
        private String[] field_order_type_info = new String[]{'ChangeOrderDeliveryAddressResult'};
    }
    public class LantecAPIServiceSoap {
        public String endpoint_x = 'http://www.lantec-uk.net/LantecAPI.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.lantec-uk.net/', 'wwwLantecUkNet'};
        public String GetOrderStatus(String SecureCode,Integer OrderId) {
            wwwLantecUkNet.GetOrderStatus_element request_x = new wwwLantecUkNet.GetOrderStatus_element();
            request_x.SecureCode = SecureCode;
            request_x.OrderId = OrderId;
            wwwLantecUkNet.GetOrderStatusResponse_element response_x;
            Map<String, wwwLantecUkNet.GetOrderStatusResponse_element> response_map_x = new Map<String, wwwLantecUkNet.GetOrderStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/GetOrderStatus',
              'http://www.lantec-uk.net/',
              'GetOrderStatus',
              'http://www.lantec-uk.net/',
              'GetOrderStatusResponse',
              'wwwLantecUkNet.GetOrderStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetOrderStatusResult;
        }
        public String UploadOrder(String SecureCode,String ProjectCode,String ClientJobNumber,String ClientRef,String Reseller,String Company,String SiteName,String Address1,String Address2,String Town,String County,String PostCode,String Country,String MerchantID,String OpeningTimes,String SiteContact,String ContactPhoneNo,String ConfirmationEmail,String Configuration,String CollectFromWarehouse,String ShipToEngineer,String DespatchService,String DespatchDate,String CourierInstructions,String JobDate,String JobDescription,String JobEngineer,String Mobile) {
            wwwLantecUkNet.UploadOrder_element request_x = new wwwLantecUkNet.UploadOrder_element();
            request_x.SecureCode = SecureCode;
            request_x.ProjectCode = ProjectCode;
            request_x.ClientJobNumber = ClientJobNumber;
            request_x.ClientRef = ClientRef;
            request_x.Reseller = Reseller;
            request_x.Company = Company;
            request_x.SiteName = SiteName;
            request_x.Address1 = Address1;
            request_x.Address2 = Address2;
            request_x.Town = Town;
            request_x.County = County;
            request_x.PostCode = PostCode;
            request_x.Country = Country;
            request_x.MerchantID = MerchantID;
            request_x.OpeningTimes = OpeningTimes;
            request_x.SiteContact = SiteContact;
            request_x.ContactPhoneNo = ContactPhoneNo;
            request_x.ConfirmationEmail = ConfirmationEmail;
            request_x.Configuration = Configuration;
            request_x.CollectFromWarehouse = CollectFromWarehouse;
            request_x.ShipToEngineer = ShipToEngineer;
            request_x.DespatchService = DespatchService;
            request_x.DespatchDate = DespatchDate;
            request_x.CourierInstructions = CourierInstructions;
            request_x.JobDate = JobDate;
            request_x.JobDescription = JobDescription;
            request_x.JobEngineer = JobEngineer;
            request_x.Mobile = Mobile;
            wwwLantecUkNet.UploadOrderResponse_element response_x;
            Map<String, wwwLantecUkNet.UploadOrderResponse_element> response_map_x = new Map<String, wwwLantecUkNet.UploadOrderResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/UploadOrder',
              'http://www.lantec-uk.net/',
              'UploadOrder',
              'http://www.lantec-uk.net/',
              'UploadOrderResponse',
              'wwwLantecUkNet.UploadOrderResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadOrderResult;
        }
        public String ApproveOrder(String SecureCode,String ProjectCode,String ClientJobNo,String ClientRef) {
            wwwLantecUkNet.ApproveOrder_element request_x = new wwwLantecUkNet.ApproveOrder_element();
            request_x.SecureCode = SecureCode;
            request_x.ProjectCode = ProjectCode;
            request_x.ClientJobNo = ClientJobNo;
            request_x.ClientRef = ClientRef;
            wwwLantecUkNet.ApproveOrderResponse_element response_x;
            Map<String, wwwLantecUkNet.ApproveOrderResponse_element> response_map_x = new Map<String, wwwLantecUkNet.ApproveOrderResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/ApproveOrder',
              'http://www.lantec-uk.net/',
              'ApproveOrder',
              'http://www.lantec-uk.net/',
              'ApproveOrderResponse',
              'wwwLantecUkNet.ApproveOrderResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ApproveOrderResult;
        }
        public String CancelOrder(String SecureCode,Integer OrderId) {
            wwwLantecUkNet.CancelOrder_element request_x = new wwwLantecUkNet.CancelOrder_element();
            request_x.SecureCode = SecureCode;
            request_x.OrderId = OrderId;
            wwwLantecUkNet.CancelOrderResponse_element response_x;
            Map<String, wwwLantecUkNet.CancelOrderResponse_element> response_map_x = new Map<String, wwwLantecUkNet.CancelOrderResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/CancelOrder',
              'http://www.lantec-uk.net/',
              'CancelOrder',
              'http://www.lantec-uk.net/',
              'CancelOrderResponse',
              'wwwLantecUkNet.CancelOrderResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CancelOrderResult;
        }
        public String ChangeOrderDeliveryAddress(String SecureCode,String ProjectCode,String ClientJobNo,String ClientRef,String DelCompany,String DelSiteName,String DelAddress1,String DelAddress2,String DelTown,String DelCounty,String DelPostCode,String DelCountry) {
            wwwLantecUkNet.ChangeOrderDeliveryAddress_element request_x = new wwwLantecUkNet.ChangeOrderDeliveryAddress_element();
            request_x.SecureCode = SecureCode;
            request_x.ProjectCode = ProjectCode;
            request_x.ClientJobNo = ClientJobNo;
            request_x.ClientRef = ClientRef;
            request_x.DelCompany = DelCompany;
            request_x.DelSiteName = DelSiteName;
            request_x.DelAddress1 = DelAddress1;
            request_x.DelAddress2 = DelAddress2;
            request_x.DelTown = DelTown;
            request_x.DelCounty = DelCounty;
            request_x.DelPostCode = DelPostCode;
            request_x.DelCountry = DelCountry;
            wwwLantecUkNet.ChangeOrderDeliveryAddressResponse_element response_x;
            Map<String, wwwLantecUkNet.ChangeOrderDeliveryAddressResponse_element> response_map_x = new Map<String, wwwLantecUkNet.ChangeOrderDeliveryAddressResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/ChangeOrderDeliveryAddress',
              'http://www.lantec-uk.net/',
              'ChangeOrderDeliveryAddress',
              'http://www.lantec-uk.net/',
              'ChangeOrderDeliveryAddressResponse',
              'wwwLantecUkNet.ChangeOrderDeliveryAddressResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ChangeOrderDeliveryAddressResult;
        }
        public String GetCourierStatus(String SecureCode,Integer OrderId) {
            wwwLantecUkNet.GetCourierStatus_element request_x = new wwwLantecUkNet.GetCourierStatus_element();
            request_x.SecureCode = SecureCode;
            request_x.OrderId = OrderId;
            wwwLantecUkNet.GetCourierStatusResponse_element response_x;
            Map<String, wwwLantecUkNet.GetCourierStatusResponse_element> response_map_x = new Map<String, wwwLantecUkNet.GetCourierStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/GetCourierStatus',
              'http://www.lantec-uk.net/',
              'GetCourierStatus',
              'http://www.lantec-uk.net/',
              'GetCourierStatusResponse',
              'wwwLantecUkNet.GetCourierStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetCourierStatusResult;
        }
        public String UploadSagePayOrder(String SecureCode,String Type_x,String Company,String MerchantName,String Address1,String Address2,String Address3,String Address4,String ConfirmationEmail,String SiteContact,String ContactPhone,String MID,String TID,String ZontalkAppName,String BOMTemplate,String SerialNo1,String SerialNo2,String SerialNo3,String SerialNo4,String PartNo1,String PartNo2,String PartNo3,String PartNo4,String ExtraTests,String ShipAddress1,String ShipAddress2,String ShipAddress3,String ShipAddress4,String ShipContactName) {
            wwwLantecUkNet.UploadSagePayOrder_element request_x = new wwwLantecUkNet.UploadSagePayOrder_element();
            request_x.SecureCode = SecureCode;
            request_x.Type_x = Type_x;
            request_x.Company = Company;
            request_x.MerchantName = MerchantName;
            request_x.Address1 = Address1;
            request_x.Address2 = Address2;
            request_x.Address3 = Address3;
            request_x.Address4 = Address4;
            request_x.ConfirmationEmail = ConfirmationEmail;
            request_x.SiteContact = SiteContact;
            request_x.ContactPhone = ContactPhone;
            request_x.MID = MID;
            request_x.TID = TID;
            request_x.ZontalkAppName = ZontalkAppName;
            request_x.BOMTemplate = BOMTemplate;
            request_x.SerialNo1 = SerialNo1;
            request_x.SerialNo2 = SerialNo2;
            request_x.SerialNo3 = SerialNo3;
            request_x.SerialNo4 = SerialNo4;
            request_x.PartNo1 = PartNo1;
            request_x.PartNo2 = PartNo2;
            request_x.PartNo3 = PartNo3;
            request_x.PartNo4 = PartNo4;
            request_x.ExtraTests = ExtraTests;
            request_x.ShipAddress1 = ShipAddress1;
            request_x.ShipAddress2 = ShipAddress2;
            request_x.ShipAddress3 = ShipAddress3;
            request_x.ShipAddress4 = ShipAddress4;
            request_x.ShipContactName = ShipContactName;
            wwwLantecUkNet.UploadSagePayOrderResponse_element response_x;
            Map<String, wwwLantecUkNet.UploadSagePayOrderResponse_element> response_map_x = new Map<String, wwwLantecUkNet.UploadSagePayOrderResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/UploadSagePayOrder',
              'http://www.lantec-uk.net/',
              'UploadSagePayOrder',
              'http://www.lantec-uk.net/',
              'UploadSagePayOrderResponse',
              'wwwLantecUkNet.UploadSagePayOrderResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadSagePayOrderResult;
        }
        public String UploadOrderDetail(String SecureCode,String ProjectCode,String ClientJobNo,String Service,String PartNo,String Qty,String ClientRef) {
            wwwLantecUkNet.UploadOrderDetail_element request_x = new wwwLantecUkNet.UploadOrderDetail_element();
            request_x.SecureCode = SecureCode;
            request_x.ProjectCode = ProjectCode;
            request_x.ClientJobNo = ClientJobNo;
            request_x.Service = Service;
            request_x.PartNo = PartNo;
            request_x.Qty = Qty;
            request_x.ClientRef = ClientRef;
            wwwLantecUkNet.UploadOrderDetailResponse_element response_x;
            Map<String, wwwLantecUkNet.UploadOrderDetailResponse_element> response_map_x = new Map<String, wwwLantecUkNet.UploadOrderDetailResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.lantec-uk.net/UploadOrderDetail',
              'http://www.lantec-uk.net/',
              'UploadOrderDetail',
              'http://www.lantec-uk.net/',
              'UploadOrderDetailResponse',
              'wwwLantecUkNet.UploadOrderDetailResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadOrderDetailResult;
        }
    }
}