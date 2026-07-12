public class StaffTriggerHandler {

    public static void beforeInsert(List<Staff_c__c> staffList){

        for(Staff_c__c s : staffList){

            if(String.isBlank(s.Status__c)){
                s.Status__c = 'Active';
            }
        }
    }
}