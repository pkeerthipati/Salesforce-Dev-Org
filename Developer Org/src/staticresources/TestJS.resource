/*function callActFun(){
Visualforce.remoting.Manager.invokeAction(
                '{!$RemoteAction.RemotingDemo.remoteDemo}',
                'Testing',
                function(result, event){
					console.log('test called act fun',result);
				},{escape: true}
				);
				}*/
function callActFun(){				
pkeerthipati.RemotingDemo.remoteDemo
(
        'testing',
        function(result, event) 
        {
            console.log('test called act fun',result);
        },
        { escape: true }
);
}