//Deprecated HighChart using Lightning Standard Charts. 
@isTest
private with sharing class HeatMapBasicCtrlTest {

    @isTest
    static void testHeatMapBasic(){
        Test.StartTest();
        HeatMapBasicCtrl chrt = new HeatMapBasicCtrl();
        Test.stopTest();
            
        System.assert(chrt.currentFiscalYear == null, 'defaultPhase should be null');
        System.assert(chrt.defaultPhase == null, 'userPrefId should be null');
        System.assert(chrt.recordId == null, 'retURL should be null');
        System.assert(chrt.chartFilterParameters == null, 'defaultPhase should be null');
        System.assert(chrt.tmps == null, 'userPrefId should be null');
        System.assert(chrt.countries == null, 'retURL should be null');
        System.assert(chrt.counts == null, 'retURL should be null');
    }    

    @isTest
    static void testHeatMapBasic1(){
        Map<String,String> IconCssMap = new Map<String,String>();
        Map<String,String> IconCssMapNew = new Map<String,String>();
        Test.startTest();
            IconCssMap = HeatMapBasicCtrl.getActionIcon(); 
            IconCssMapNew = HeatMapBasicCtrl.getActionIconLwc(); 
        Test.stopTest();
        System.assertNotEquals(null, IconCssMap);
        System.assertNotEquals(null, IconCssMapNew);
    }

}