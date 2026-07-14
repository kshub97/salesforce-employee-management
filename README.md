# Salesforce Employee Management Application

A Salesforce application built using Salesforce DX, Apex, LWC and Flow automation to manage employees and leave requests.

## Features

### Data Model
- Department Custom Object
- Staff Custom Object
- Leave Request Custom Object
- Lookup Relationships

### Validation Rules
- Joining date cannot be in future
- Salary cannot be negative
- Leave validation rules

### Apex Development
- Trigger to automatically assign default employee status
- Trigger Handler Pattern implementation
- Apex Controller for LWC integration

### Flow Automation
- Record Triggered Flow for Leave Request processing
- Automatic leave approval for short leaves
- Pending approval for longer leave requests

### Security
- HR Permission Set
- Manager Permission Set

### Reporting and Analytics
- Staff by Department report
- Staff by Status report
- Leave Request Status report
- Employee Management Dashboard

### Lightning Web Components
- Custom Employee Dashboard component
- Displays:
  - Total Staff Count
  - Active Staff Count
  - Pending Leave Requests

## Technologies Used

- Salesforce DX
- Apex
- SOQL
- Lightning Web Components (LWC)
- Flow Builder
- Lightning App Builder
- Validation Rules
- Permission Sets

## Project Structure

```text
force-app/main/default/
├── objects/
├── classes/
├── triggers/
├── flows/
├── permissionsets/
└── lwc/
```

## Future Enhancements

- Email notifications for leave approvals
- Manager approval workflow
- Employee performance tracking
- Experience Cloud portal