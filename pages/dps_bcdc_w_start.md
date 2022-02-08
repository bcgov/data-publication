---
layout: default
title: Where to Start
nav_order: 31
parent: BC Data Catalogue
has_children: false
has_toc: true
---

## Table of Contents

+ [**WHERE TO START WORKFLOW DIAGRAM**](#where-to-start-workflow-diagram)
+ [**HOW TO BECOME A PROVIDER TO THE CATALOGUE**](#how-to-become-a-provider-to-the-catalogue)
    - [HOW TO BECOME A PROVIDER FOR ANOTHER ORGANIZATION](#how-to-become-a-provider-for-another-organization)
+ [**HOW TO PUBLISH METADATA RECORDS**](#how-to-publish-metadata-records)
+ [**HOW TO REORDER RESOURCES**](#how-to-reorder-resources)
+ [**HOW TO CREATE METADATA GROUPS**](#how-to-create-metadata-groups)
+ [**HOW TO ADD OR UPDATE ORGANIZATION AND SUB-ORGANIZATION DETAILS**](#how-to-add-or-update-organization-and-sub-organization-details)
+ [**HOW TO DO BULK UPDATES**](#how-to-do-bulk-updates)
+ [**OTHER FREQUENTLY ASKED QUESTIONS**](#other-frequently-asked-questions)

------------------------------

|**AUDIENCE**| | | | |
|:---|:---|:---|:---|:---|
|[*Data Publisher*](./glossary.md#data_publisher)|[*Custodian*](./glossary.md#custodian)|[*Data Manager*](./glossary.md#data_manager)|[*Data Steward*](./glossary.md#data_steward)|[*Metadata Editor*](./glossary.md#metadata_editor)|

------------------------------
## WHERE TO START WORKFLOW DIAGRAM

### [BCDC Metadata Readiness Workflow](./images/wf_MetadataReadiness.svg)
Wondering if you are ready to create metadata? This workflow guides you through the pre-work so you will be ready to create a metadata record.
[![BCDC Metadata Readiness Workflow](./images/wf_MetadataReadiness.png)](./images/wf_MetadataReadiness.svg)

------------------------------


## HOW TO BECOME A PROVIDER TO THE CATALOGUE

To become a Catalogue editor/publisher for a Sub-Organization (a Branch or Division), approval from the [Data Custodian](./dsg_bcdc_roles_responsibilities.md#the-data-custodian) (Director or Executive Director) is required. Here are the steps to complete this, provide:

To start this process please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3) to create a new account. There are also options to modify an existing, transfer or close an account.

A Catalogue administrator will then action your request and contact you with all relevant information to get you started as an Editor in the BC Data Catalogue.

Organizations in the Broader Public Sector (BPS) may publish metadata records and data to the Catalogue. 
+ For datasets licensed under Open Data, these organizations will require their own Open Government Licence. See [Licences](./dps_licences.md) page for more information on this.  
+ For new BSP accounts, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/16) with the subject as **Dataset Publication as a Crown Corp or BC Agency** and provide as much detail as possible in the description.

### HOW TO BECOME A PROVIDER FOR ANOTHER ORGANIZATION

It is common for oranizations to have staff who work in other Sub-Organizations or branches who steward their data. There may be many reasons for this.

* Therefore [Stewards](./dsg_bcdc_roles_responsibilities.md#the-data-steward) can become providers to the catalogue on behalf of another sub-organization's [Data Custodian](./dsg_bcdc_roles_responsibilities.md#the-data-custodian).

* To be granted access, is the same as the information outlined on [how to get access above](#how-to-become-a-provider-to-the-catalogue) but is useful to include that the editor will be steward.


[RETURN TO TOP][1]

------------------------------
## HOW TO PUBLISH METADATA RECORDS

See the BC Data Catalogue [Publication Workflow](./dps_bcdc_w.md)

------------------------------

## HOW TO REORDER RESOURCES

This funcationality is not available currently, however it is possible with the [API](http://docs.ckan.org/en/ckan-2.7.3/api/#ckan.logic.action.update.package_resource_reorder).

For support, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

1. The catalogue record
1. Desired order of resources
   + How resources should be order should follow some guidelines for example
       - User Guides should come first
       - Cronological order for datasets that have a date range with newest first
       - Those that have the highest value to the end users
       - Or if there are a lot of resoruces, alphabetical may also be

------------------------------

## HOW TO CREATE METADATA GROUPS

Metadata Groups provide a listing of like datasets for a specific purpose and can contain records from across multiple organizations.
+ These are not intended to replace a full listing of records for a sub-organization.
+ Groups by default are public but a request them to be visible to IDIR only can be made.

To create a group, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

**Requirements:**
+ **Group Name**:
+ **Group Description**:
+ **URL**: _for more information_
+ **Image**: _either a file or URL_
+ **Members**: _list of IDIRs who will maintain the Group_
+ **Group visibility**: Public or IDIR

[RETURN TO TOP][1]

------------------------------

## HOW TO ADD OR UPDATE ORGANIZATION AND SUB-ORGANIZATION DETAILS

Not all Ministry or Broader Public Sector organizations are listed in the catalgoue. Only those with records are listed.

To add or update a Organization/Ministry or Sub-organization/Branch/Division/Program names or details, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

+ **Subject Line**: BCDC Organization/Sub-Organization Addition/Update
+ **Body**:
   + Name of Minsitry of Oganization:
      + If a sub-organization has moved to a different minsitry, include the new ministry or organization name.
   + Name of Sub-Organization or Branch:
      + If a name change include the old and new name  
   + Additional Organization details
       + Description:
       + External URL:
   + List of data providers (Editors)
       + When an update is requested for a sub-organization, we ask that the members and contacts list be reviewed.
       + DataBC can provide you with a current list to review.

On each record it will state the Sub-organication name that the record has been **Published By**.

For editors of multiple sub-organizations, they will be able to select a record to be **Published By** any of these.

[RETURN TO TOP][1]

------------------------------

## HOW TO DO BULK UPDATES
When there are more than 20 records that require updating, a bulk update can be requested by opening a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

+ Common bulk updates:
	+ Branch/Division name
	+ Contact information
	+ State Change
	+ URL modifications for More Info and Resources

------------------------------

## OTHER FREQUENTLY ASKED QUESTIONS

See the [Catalogue section of the Data Publication FAQ](./faq.md#metadata-records-and-the-bc-data-catalogue)

[RETURN TO TOP][1]

[1]: #table-of-contents
