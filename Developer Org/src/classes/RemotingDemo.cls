Global class RemotingDemo{
public RemotingDemo(){

}
@RemoteAction
global static string remoteDemo(String test){
system.debug('test'+test);
return 'Hello';
}
}