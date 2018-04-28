public Class TreeCircleController{

public List<String> fldNames = new List<String>();

public List<String> getFieldNames(){

fldNames.add('Name');
fldNames.add('Address');
fldNames.add('Website');
system.debug('****************'+fldNames);
return fldNames;
}

}