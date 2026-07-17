import { LightningElement, wire } from 'lwc';

import getTotalLeads from '@salesforce/apex/SalesDashboardController.getTotalLeads';
import getOpenOpportunities from '@salesforce/apex/SalesDashboardController.getOpenOpportunities';
import getPendingApprovals from '@salesforce/apex/SalesDashboardController.getPendingApprovals';
import getPipelineRevenue from '@salesforce/apex/SalesDashboardController.getPipelineRevenue';

export default class SalesDashboard extends LightningElement {

    @wire(getTotalLeads)
    totalLeads;

    @wire(getOpenOpportunities)
    openOpportunities;

    @wire(getPendingApprovals)
    pendingApprovals;

    @wire(getPipelineRevenue)
    pipelineRevenue;
}