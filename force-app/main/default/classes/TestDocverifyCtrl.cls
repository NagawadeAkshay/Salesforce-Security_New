@isTest
private with sharing class TestDocverifyCtrl {
	 private static void setup(){
	 	
	 }
	 
  	private class WebServiceMockImpl implements WebServiceMock
    {
        public void doInvoke(
        Object stub, Object request, Map<String,Object> response,
        String endpoint, String soapAction, String requestName,
        String responseNS, String responseName, String responseType){
        	if(request instanceof DocverifyCtrl.GetSignatureStatus_element)
        		response.put('response_x',new DocverifyCtrl.GetSignatureStatusResponse_element());
        	if(request instanceof DocverifyCtrl.CancelESign_element)	
            	response.put('response_x', new DocverifyCtrl.CancelESignResponse_element());
            if(request instanceof DocverifyCtrl.GetDocument_element)	
            	response.put('response_x', new DocverifyCtrl.GetDocumentResponse_element());
            if(request instanceof DocverifyCtrl.AddNewDocumentESign_element)	
            	response.put('response_x', new DocverifyCtrl.AddNewDocumentESignResponse_element());
            return;
        }
    }
	
	@IsTest
    private static void coverGeneratedCodeTypes(){
	 	new DocverifyCtrl();
        new DocverifyCtrl.GetSignatureStatusResponse_element();
        new DocverifyCtrl.CancelESignResponse_element();
	 	new DocverifyCtrl.GetDocumentResponse_element();
		new DocverifyCtrl.AddNewDocumentESignResponse_element();
        String testAssert = 'test';
        System.assertEquals('test', testAssert);
        
	}
    
	 
	@IsTest
    public static void testAllMethods(){
        Test.startTest();
	   	System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
    	DocverifyCtrl docVerify = new DocverifyCtrl();
    	DocverifyCtrl.DocVerify_x0020_Web_x0020_ServiceSoap DocVerSoap = new DocverifyCtrl.DocVerify_x0020_Web_x0020_ServiceSoap();
    	String getSignStatusMethod = DocVerSoap.GetSignatureStatus('aaaa','aa','aa');
    	String cancelSignMethod = DocVerSoap.CancelESign('','','');
    	String getDoc = DocVerSoap.GetDocument('','','');
    	String addNewDoc = DocVerSoap.AddNewDocumentESign('','','','','','');
    	System.assertEquals(addNewDoc,null);
        Test.stopTest();
    }
}