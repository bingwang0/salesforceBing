@RestResource(urlMapping='/ws/partners/*')
global class testPOSTReceiver {
    //currently set up in Site ctct for public use.
    //URL:   https://twtinc-developer-edition.na3.force.com/ws/services/apexrest/ws/partners/
    
	@HttpPost
    global static String receiveRequest() {
        Blob body = RestContext.request.requestBody;
        HttpReq__c hr = new HttpReq__c(msgbody__c = body.toString());
        insert hr;
        return 'Request received';
    }
}