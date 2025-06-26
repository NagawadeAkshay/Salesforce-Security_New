@isTest
private class ElectronicSignaturePDFCtrlTest {
     @isTest
    static void verifyElectronicSignaturePDFCtrl(){ 
        Boolean isCreated = TestHelper.createCustomSettings(true);
        System.assertNotEquals(null, isCreated);

        Document objDocument1 = new Document(
            Body = Blob.valueOf('Some Text'),
            ContentType = 'application/pdf',
            DeveloperName = 'PDFHeaderImageDocName',
            IsPublic = true,
            Name = 'PDFHeaderImageDocName',
            FolderId = UserInfo.getUserId()
        );
        insert objDocument1;
        System.assertNotEquals(null, objDocument1.Id);

        Document objDocument2 = new Document(
            Body = Blob.valueOf('Some Text'),
            ContentType = 'application/pdf',
            DeveloperName = 'PDFFooterImageDocName',
            IsPublic = true,
            Name = 'PDFFooterImageDocName',
            FolderId = UserInfo.getUserId()
        );
        insert objDocument2;
        System.assertNotEquals(null, objDocument2.Id);

        HelpConfig__c objHelpConfig = new HelpConfig__c(
            HelpContent__c = 'test Feedback Ctrl',
            HelpText__c = 'test Feedback Ctrl',
            UniqueName__c = 'GG System alerts'
        );
        insert objHelpConfig;
        System.assertNotEquals(null, objHelpConfig.Id);

        Test.setCurrentPageReference(new PageReference('Page.ElectronicSignaturePDF'));
        System.currentPageReference().getParameters().put('id', objHelpConfig.Id);
        ElectronicSignaturePDFCtrl obj = new ElectronicSignaturePDFCtrl();
        System.assertNotEquals(null, obj);
        obj.header = null;
        obj.signatureContent = null;
        obj.styleForHeader = null;

        delete objHelpConfig;
        
        obj = new ElectronicSignaturePDFCtrl();
        System.assertNotEquals(null, obj);
    }
}