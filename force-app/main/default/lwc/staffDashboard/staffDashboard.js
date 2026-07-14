import { LightningElement, wire } from 'lwc';

import getTotalStaff from '@salesforce/apex/StaffDashboardController.getTotalStaff';
import getActiveStaff from '@salesforce/apex/StaffDashboardController.getActiveStaff';
import getPendingLeaves from '@salesforce/apex/StaffDashboardController.getPendingLeaves';

export default class StaffDashboard extends LightningElement {

    //wire is like @GetMapping("/employees/count") in spring boot or in react useEffect(() => { fetch('/employees') }, [])
    @wire(getTotalStaff)
    totalStaff;

    @wire(getActiveStaff)
    activeStaff;

    @wire(getPendingLeaves)
    pendingLeaves;
}