public class ImportCSVfromVFPageController {
    
    public String csvFileBody { get; set; }
    public String csvAsString {get; set;}
    public String[] csvFileLines {get; set;}
    public List<Account> accList {get; set;}
    public ImportCSVfromVFPageController(){
        csvFileLines = new String[]{};
        accList = new List<Account>();
    }
    
    public void importCSVFile() {
        system.debug('csv file body'+csvFileBody);
        csvAsString = String.valueOf(csvFileBody);
        system.debug('csv as string'+csvAsString);
        csvFileLines = csvAsString.split('\n');
        system.debug('csv as string lines'+csvFileLines.size());
        
        for(Integer i=1;i<csvFileLines.size();i++){
               Account accObj = new Account() ;
               string[] csvRecordData = csvFileLines[i].split(',');
               accObj.name = csvRecordData[0] ;             
               accObj.accountnumber = csvRecordData[1];
               accObj.Type = csvRecordData[2];
               accObj.AccountSource = csvRecordData[3];   
               accObj.Industry = csvRecordData[4];                                                                             
               acclist.add(accObj);   
         }
         system.debug('acclist'+acclist);
        
    }


    
}