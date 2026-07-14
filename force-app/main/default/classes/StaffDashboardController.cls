
//with sharing enforces record-level access, while without sharing ignores sharing rules.
public with sharing class StaffDashboardController {

    //@AuraEnabled ->This exposes the method to the frontend. without this LWC ❌ cannot call method
    @AuraEnabled(cacheable=true)
    public static Integer getTotalStaff() {
        return [SELECT COUNT()
                FROM Staff_c__c];
    }


    // cacheable=true ->Data can be cached because method only reads data.
    //Required for: * @wire, *Better performance
    @AuraEnabled(cacheable=true)
    //LWC calls methods statically.
    public static Integer getActiveStaff() {
        return [
            SELECT COUNT()
            FROM Staff_c__c
            WHERE Status__c = 'Active'
        ];
    }

    @AuraEnabled(cacheable=true)
    public static Integer getPendingLeaves() {
        return [
            SELECT COUNT()
            FROM Leave_Request__c
            WHERE Status__c = 'Pending Approval'
        ];
    }
}