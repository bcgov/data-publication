---
layout: default
title: Roles & Responsibilities
nav_order: 48
parent: BC Geographic Warehouse
has_toc: false
nav_exclude: true
---

# Roles and Responsibilties

Publishing new or modifing existing BC Geographic Warehouse objects requires coordination between multiple partners including DataBC staff, the client, and the contractor involved (if applicable). 

This page describes the roles and responsibilities of DataBC and the client when publishing data to the BC Geographic Warehouse.

|**Audience**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Portfolio Managers* | *Application Administrators* |

------------------------------

## Pre-Publication

### DataBC

| | |
|---|---|
|1.|Provide documentation on the client workflow for publishing, maintaining, and retiring data sets (known as the data lifecycle) in the BC Geographic Warehouse|
|2.|_*Additional consulting services can be requested for preparing the source data, prior to a data publication request being initiated_|

### Client

| | |
|---|---|
|1.|Review all required documentation as described in the [Data Publication Workflow](dps_bcgw_w.md)|
|2.|Ensure that the data to be published follows standards and guidelines as described in: <ui><li>BC Geographic Warehouse - [Data Standards and Guidelines](dsg_bcgw_data_standards.md)</li></ui> <ui><li>[Common Standards and Guidelines](dsg.md)</li></ui>
|3.|Ensure that the data to be published is in a production state and ready for publishing in the BC Geographic Warehouse prior to requesting publication. <ui><li>_Considerations may be made where new applications being built rely on testing the data throughout deployments in delivery and test database environments._</li></ui>|
|4.|Complete the [Dataset Model](https://bcgov.github.io/data-publication/pages/images/Dataset_Model_Current_TEMPLATE.xlsx) in preparation for submitting the request to publish (this is a requirement to request publication)|
|5.|Submit the request to publish in the [Data Sytems and Services Request System](https://dpdd.atlassian.net/servicedesk/customer/portal/1) as a [Share New Data](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/28) request|

------------------------------

## During Publication

### DataBC

| | |
|---|---|
|1.|Be available to the client for additional questions or issues that arise throughout the publication process |
|2.|Schedule regular meetings with the client, at mutually convenient times, for each stage in the data publication process (see Scheduled Meetings)|
|3.|Communicate timelines for each stage in the data publication process|
|4.|Provide updated timelines when affected by change of scope, technology or shifts in priorities|
|5.|Review and provide feedback on the Dataset Model as submitted by the client|
|6.|Review and publish a layer file in iMapBC and/or the Layer Library, if applicable|
|7.|Review and publish BC Data Catalogue metadata record(s) |
|8.|Configure Data Distribution, if the data will be available for download|
|9.|When there is a DataBC hosted map application involved (not including iMapBC), plan and coordinate required application changes through the Delivery, Test, Production environments|
|10.|Deploy data sets to Delivery, Test and Production BCGW environments|
|11.|Configure and/or schedule data replications from source to target (BCGW)|
|12.|Communicate any issues or concerns with the client as they arise|

### Client

| | |
|---|---|
|1.|Communicate with the DataBC team via the Share New Data request created in the Data Sytems and Services Request System|
|2.|Attend and contribute to all regularly scheduled meetings throughout the data publication process|
|3.|Communicate with the DataBC team when there are changes to scope or shifts in priorities|
|4.|Address issues or concerns as they arise. If issue resolution impacts timelines, this will be communicated with DataBC|
|5.|If the dataset is to be configured for use in iMapBC, the Layer Library, ArcGIS Online, or as a WMS, the client will supply a layer file. <ui>_DataBC is available to provide this service when the business area does not have GIS support._</ui>|
|6.|Prepare the BC Data Catalogue record and set the State to Pending Publish prior to data being migrated to production|
|7.|Complete and submit the Open Data Assessment and checklist to DataBC where the data will be licensed under the Open Government Licence – British Columbia.|

------------------------------

## Post-Publication

### DataBC

| | |
|---|---|
|1.|Provide an opportunity for feedback at the close of the project|
|2.|Review client feedback and apply learnings to related aspects of the data publication process|
|3.|Continuously monitor scheduled replications and address any issues as they arise|
|4.|Notify client of any issues with the data, access, layer presentation, distribution, or configured applications throughout the lifecycle of the data|

### Client

| | |
|---|---|
|1.|Provide the DataBC team with feedback at the close of the project|
|2.|Ensure source data model remains unchanged. Changes to the data model post-project can occur, but will be initiated through a separate request (costs often apply)|
|3.|Maintain BC Data Catalogue record with current information throughout the lifecycle of the data|
|4.|Notify DataBC when the dataset is at the end of its lifecycle and should be retired|
|5.|Notify DataBC of any issues with the data, access, layer presentation, distribution, or configured applications throughout the lifecycle of the data|
|6.|Maintain and resolve any issues that arise with the source data for replication to the BCGW throughout the lifecycle of the data|

------------------------------

[RETURN TO TOP][1] 

[1]: #roles-and-responsibilities
