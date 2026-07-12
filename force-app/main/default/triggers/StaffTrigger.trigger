trigger StaffTrigger on Staff_c__c (before insert) {
    
     if(Trigger.isBefore && Trigger.isInsert){
        StaffTriggerHandler.beforeInsert(Trigger.new);
    }

}