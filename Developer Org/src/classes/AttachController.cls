global class AttachController {

    @RemoteAction
    global static void attMethod(String Id,Attachment att) {
        system.debug('in remote action method');
        return;
    }
}