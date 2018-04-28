trigger PushNewlyCreatedLead on Lead (after Insert) {
    
    List<PartnerNetworkConnection> connMap = new List<PartnerNetworkConnection>(
    [select Id, ConnectionStatus, ConnectionName from PartnerNetworkConnection
        where ConnectionStatus = 'Accepted' AND ConnectionName = 'capgemini']);
    
    List<PartnerNetworkRecordConnection> recConnList = new List<PartnerNetworkRecordConnection>();
    
    for(Lead L : trigger.new){
            
    PartnerNetworkRecordConnection newConnection = new PartnerNetworkRecordConnection();
    newConnection.ConnectionId = connMap[0].Id;
    newConnection.LocalRecordId = L.Id;
    newConnection.SendClosedTasks = false;
    newConnection.SendOpenTasks = false;
    newConnection.SendEmails = false;
    recConnList.add(newConnection);
    }
    insert recConnList;
}