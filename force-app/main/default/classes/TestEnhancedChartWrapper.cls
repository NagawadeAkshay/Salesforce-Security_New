/*
* CHANGE HISTORY
* =============================================================================
* Date               Name                               Description
* 03/03/2018    Rahul Thange                            Created
* 04/03/2019    Rahul Thange                            Modified and Enhanced
* 04/03/2019    Yogesh Gaikwad                          Code reviewed
* 06/03/2019    Rahul Thange                          Modified Field API Name
* =============================================================================
*/
//Deprecated HighChart using Lightning Standard Charts. 
@isTest
public class TestEnhancedChartWrapper{
    @isTest
    static void testgetChartIcon(){
        Test.startTest();
        Map<String, String> result = EnhancedChartWrapper.getChartIcon();
        Map<String, String> resultLWC = EnhancedChartWrapper.getChartIconLwc();
        Test.stopTest();
        System.assertNotEquals(null,result);
        System.assertNotEquals(null,resultLWC);
    }
}