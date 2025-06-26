@IsTest
public class TestRecentlyViewedHelper {
 @IsTest
    private static void setup(){
        RecentlyViewedHelper obj = new RecentlyViewedHelper();
        String phaseNameObj = 'TestPhase';
        PhaseConfig__c phaseConfig = TestHelper.getPhase(true);
        SObjectConfig__c sobj = TestHelper.getSObjectConfig(true);
        UserPreferenceHelper.setStringValue('ActiveAppName__c', 'StateasGrantor');
        
        SObjectPhaseConfig__c sobjPhaseConfig = new SObjectPhaseConfig__c();
         sobjPhaseConfig.PhaseConfig__c =phaseConfig.id;
         sobjPhaseConfig.SObjectConfig__c = sobj.id;
         sobjPhaseConfig.GlobalSearchVisibility__c = true;
         sobjPhaseConfig.RecentlyViewedVisibility__c = true;
         insert sobjPhaseConfig; 
         Test.startTest();
        List<RecentlyViewed> lst = RecentlyViewedHelper.getRecentlyViewedItems(phaseNameObj,phaseConfig);
        List<RecentlyViewedWrapper> lst1 =  RecentlyViewedHelper.fetchRecentlyViewedItems(phaseNameObj);
        Test.stopTest();
        System.assertNotEquals(null,obj);
    }

    @IsTest
    static void testRecentlyViewedWrapper(){ 
        Test.startTest();
        RecentlyViewedWrapper obj = new RecentlyViewedWrapper('01p6A00000HDyfxQAD','StrName','RecordTypeDevloperName','strType');
        RecentlyViewedWrapper obj1 = new RecentlyViewedWrapper('01p6A00000HDyfxQAD','StrName','RecordTypeDevloperName','strType',datetime.now());
        RecentlyViewedWrapper obj2 = new RecentlyViewedWrapper();
        Test.stopTest();
        System.assertEquals('StrName',obj.Name);
        System.assertNotEquals(null,obj);
        System.assertNotEquals(null,obj1);
    }
    @isTest
    static void testgetRecentlyView(){
        Test.startTest();
        List<sObject> sObjectList = new List<sObject>();
        Map<String, String> fieldLableMap = new Map<String, String>();
        Map<String, String> fieldDataTypeMap = new Map<String, String>();
        Map<String, Integer> scaleMap =new  Map<String, Integer>();
        String label;
        RecentlyViewedHelper.RecentlyViewWrapper costom = new RecentlyViewedHelper.RecentlyViewWrapper(sObjectList,fieldLableMap,fieldDataTypeMap,scaleMap,label);
        Test.stopTest();
        System.assertNotEquals(sObjectList,null);
       }
}