---
layout: default
title: Retirement Workflow
nav_order: 43
parent: BC Geographic Warehouse
has_children: false
has_toc: false
---

# BC GEOGRAPHIC WAREHOUSE (BCGW) DATA RETIREMENT WORKFLOW


|**AUDIENCE**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Portfolio Managers* | *Application Administrators* | *Data Consumers* 

### BCGW Data Retirements
Data Custodians are ultimately responsible for the Data Lifecycle of their data, which includes but is not limited to the maintenance, accuracy, licensing and the decision to replace, retire or archive their data.

To retire data from the BCGW, please open a ticket with the [ Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/26).

### Notifications
From the information provided by the custodian, a ***Notice of Intent*** is created that includes metadata links to replacement datasets if available. After review a ***Notice of Decision*** is sent out.

These notifications are sent out interested parties to provide advance notice that a dataset will be removed or replaced in the BC Geographic Warehouse. Emergency disabling or temporary disabling of datasets can happen but will require rationale.

Notifications are sent out by the DataBC Data Retirement team and [hosted in the BC Data Catalogue](https://catalogue.data.gov.bc.ca/dataset/3b1c8bbf-4a17-43f0-a5e4-b3e518ef77d1)

#### Notice of Intent (NOI) Timelines
* Annually, with a **4 week** allowance for users to contact the data managers with any concerns.
* Data managers may request removal of a dataset from the NOI during this period.

#### Notice of Decision (NOD) Timelines
* Annually, with a **2 week** notice before the retirement implementation begins.

### Retirement Implementation
#### Dataset Access Revoked
* Security - access to datasets will be revoked
* Delivery and Test BCGW will be revoked **one week** before **Production**

#### Data Structure Archival
* DataBC does not archive the data prior to removal from the BC Geographic Warehouse. It is the responsibility of the business area to retain a copy of the data, if required. 
   * _Requests for exports of the data content can be accommodated, where business areas do not have GIS support._
* DataBC will export a copy of the structure of the data (the data model) and provide these to the data custodian, upon request.

#### Dataset Removal
* Datasets are then physically removed from the BC Geographic Warehouse.
