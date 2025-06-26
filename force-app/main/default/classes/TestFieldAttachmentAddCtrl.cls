@isTest
private class TestFieldAttachmentAddCtrl {
    static FieldAttachmentAddCtrl aac;
        
    @isTest
    public static void testAttachmentsCtrl(){    
        User u = TestHelper.getAdminUser(true);
        SobjectConfig__c sobj = new SobjectConfig__c(Name=AppUtils.getNamespacePrefix() + 'SampleObject11__c', AttachmentClassifications__c='test1;test2;test3');
        insert sobj;
        System.runAs(u) {
            Test.startTest();
         	SampleObject11__c ann = TestHelper.getSampleObject1(true);
            PageReference pageR = Page.SampleViewPage1;
	        Test.setCurrentPageReference(pageR); 
	        System.currentPageReference().getParameters().put('parentId', ann.id);
            aac = new FieldAttachmentAddCtrl();   
           
            aac.parentObjectId = ann.Id;
            Attachment attachment = new Attachment();
            attachment.Name = 'New Attachment';
            attachment.Body = Blob.valueOf('Test');
            attachment.Description = 'Description';
            attachment.ParentId = ann.Id;
            aac.attachmentObj = attachment;
            aac.classificationVal = 'History';
            List<selectOption> selList = aac.classificationsList;
            Boolean sample = aac.showPicklist;
            aac.addAttachment();   
            
            Test.stopTest(); 
         
            System.assertNotEquals(aac,null);                                            
            }
    }
    @isTest
    public static void testAttachmentsCtrl5(){    
        User u = TestHelper.getAdminUser(true);
        System.runAs(u) {
            Test.startTest();
         	SampleObject11__c ann = TestHelper.getSampleObject1(true);
            PageReference pageR = Page.SampleViewPage1;
	        Test.setCurrentPageReference(pageR); 
	        System.currentPageReference().getParameters().put('parentId', ann.id);
            aac = new FieldAttachmentAddCtrl();   
           
            aac.parentObjectId = ann.Id;
            Attachment attachment = new Attachment();
            attachment.Name = 'New Attachment';
            attachment.Body = Blob.valueOf('Test');
            attachment.Description = 'Description';
            attachment.ParentId = ann.Id;
            aac.attachmentObj = attachment;
            aac.classificationVal = 'History';
            List<selectOption> selList = aac.classificationsList;
            Boolean sample = aac.showPicklist;
            aac.addAttachment();   
            
            Test.stopTest(); 
         
            System.assertNotEquals(aac,null);                                            
            }
    }
    
    @isTest
    public static void testAttachmentsCtrl1(){    
        User u = TestHelper.getAdminUser(true);
        SobjectConfig__c sobj = new SobjectConfig__c(Name=AppUtils.getNamespacePrefix() + 'SampleObject11__c', AttachmentClassifications__c='test1;test2;test3');
        insert sobj;
        System.runAs(u) {
            Test.startTest();
            SampleObject11__c ann = TestHelper.getSampleObject1(true);
            PageReference pageR = Page.SampleViewPage1;
	        Test.setCurrentPageReference(pageR); 
	        System.currentPageReference().getParameters().put('parentId', ann.id);
            aac = new FieldAttachmentAddCtrl();
            aac.attachClassifications = 'test1;test2';
            aac.parentObjectId = ann.Id;
            Attachment attachment = new Attachment();
            attachment.Name = 'New Attachment';
            attachment.Body = null;
            attachment.Description = 'Description';
            attachment.ParentId = ann.Id;
            aac.attachmentObj = attachment;
            aac.classificationVal = 'History';
            List<selectOption> selList = aac.classificationsList;
            Boolean sample = aac.showPicklist;
            aac.addAttachment();   
            
            Test.stopTest(); 
         
            System.assertNotEquals(aac,null);                                            
            }
    }
    
    @isTest
    public static void testAttachmentsCtrl2(){    
        User u = TestHelper.getAdminUser(true);
        SobjectConfig__c sobj = new SobjectConfig__c(Name=AppUtils.getNamespacePrefix() + 'SampleObject11__c', AttachmentClassifications__c='test1;test2;test3');
        insert sobj;
        System.runAs(u) {
            Test.startTest();
            SampleObject11__c ann = TestHelper.getSampleObject1(true);
            PageReference pageR = Page.SampleViewPage1;
	        Test.setCurrentPageReference(pageR); 
	        System.currentPageReference().getParameters().put('parentId', ann.id);
            aac = new FieldAttachmentAddCtrl();
            aac.attachClassifications = 'test1;test2';
            aac.parentObjectId = ann.Id;
            Attachment attachment = new Attachment();
            attachment.Name = 'New Attachment';
            attachment.Body = Blob.valueOf('Test');
            attachment.Description = null;
            attachment.ParentId = ann.Id;
            aac.attachmentObj = attachment;
            aac.classificationVal = 'History';
            List<selectOption> selList = aac.classificationsList;
            Boolean sample = aac.showPicklist;
            aac.addAttachment();   
            
            Test.stopTest(); 
         
            System.assertNotEquals(aac,null);                                            
            }
    }
    
}