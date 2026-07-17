public with sharing class SalesDashboardController {

    @AuraEnabled(cacheable=true)
    public static Integer getTotalLeads() {
        return [SELECT COUNT() FROM Lead];
    }

    @AuraEnabled(cacheable=true)
    public static Integer getOpenOpportunities() {
        return [
            SELECT COUNT()
            FROM Opportunity
            WHERE IsClosed = false
        ];
    }

    @AuraEnabled(cacheable=true)
    public static Integer getPendingApprovals() {
        return [
            SELECT COUNT()
            FROM Opportunity
            WHERE Approval_Status__c = 'Pending Approval'
        ];
    }

    @AuraEnabled(cacheable=true)
    public static Decimal getPipelineRevenue() {

        AggregateResult result = [
            SELECT SUM(Amount) totalRevenue
            FROM Opportunity
            WHERE IsClosed = false
        ];

        if(result.get('totalRevenue') != null) {
            return (Decimal) result.get('totalRevenue');
        }

        return 0;
    }
}