# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)


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