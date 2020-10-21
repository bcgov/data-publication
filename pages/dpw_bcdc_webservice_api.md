---
layout: default
title: Data Publication Workflow - BCDC - Web Service - API
nav_order: 30
parent: Data Publication Workflows
has_toc: false
---

# DATA PUBLICATION WORKFLOW - BC DATA CATALOGUE - WEB SERVICE - API

## PURPOSE

This page contains details for completing fields in a metadata record for the Web Service - API dataset type.

-----------------------

## AUDIENCE

The intended audiences for this page are:
+ clients that are publishing Web Service - API's to the DataBC Program

-----------------------

## PUBLISHING A WEB SERVICE - API TO THE BC DATA CATALOGUE
### Create Dataset

**State**: When creating a new metadata record, the state will be set to DRAFT. 

**Title**: This is the title of your metadata record.

**URL**: This is automatically generated once the title is filled in.

**Organization**: This is the Ministry or Organization under which the metadata record is created.

**Sub-Organization**: This is the Sub-Organization (often the Branch or Division) under which the metadata record is created.

**Description**: Provide a meaningful description of the Web Service - API here. Be sure to include any information that would be relevant to an end-user of your Web Service - API.

**More info**: Any pertinent information can be added here. Often this is used to provide links to related web sites.

**Keywords**: Enter meaningful keywords here. Think of what users may use for search terms to find the Web Service - API in the Catalogue.

---------------

#### **Contacts**

Add contacts for the following **Roles**:
1. <a href="./glossary.md/#data_custodian">Custodian</a> (required) 
1. <a href="./glossary.md/#point_of_contact">Point of Contact</a> (required) 
1. <a href="./glossary.md/#business_expert">Business Expert</a> (optional)
1. <a href="./glossary.md/#distributor">Distributor</a> (optional) 

**Name**: Contact full name

**Email**: Contact email address

**Organization**: Contact organization

**Sub-Organization**: Contact Sub-Organization

**Role**: Contact role type (as per the list above)

**Contact Displayed**: Check this box to display the contact to all catalogue users (public access). Unchecked, this contact information will only be visible to Catalogue Admin's.

---------------

#### **Data Currency/Update**

**Resource Status** is the status of the Web Service - API as described by one of the types below: 
 
|Data Update Status| Description
|:---|:---|
|Ongoing|Web Service - API's that are regularly updated should be described as ongoing.|
|Completed|Web Service - API's with no plan for future updates should be described as completed.
|Destroyed|Web Service - API's that no longer exist should be described as destroyed.|
|Historical Archive|Web Service - API's that exist, but have been archived (can also be desribed as no longer relevant) should be described as historical archive.
|Obsolete|Web Service - API's that that have been replaced with another Web Service - API should be described as destroyed.
|Planned|Web Service - API's that do not currently exist, but are planned for the future, should be described as planned.
|Required| 
|Under development|Web Service - API's that exist but are not yet completed should be described as under development.

---------------

#### **Access & Security**

**Who can access this application?** desribes the security level for access to the application.

|Access Type| Description
|:---|:---|
|Public| All users are able to access the application.
|Named Users| Only specific named users can access the application.
|Government and Business BCeID| Only people with government and BCeID credentials can access the application.
|Government| Only government credentials can access the application.

------------------------------

**Who can view this record?** describes who can view the metadata record.

|Access Type| Description
|:---|:---|
|Public | All users of the catalogue can view the metadata record.
|IDIR | Only IDIR credentials can view the metadata record.

------------------------------

**Security Classification**

|BCDC Security Classication| [Information Security Classification Levels](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)| Description
|:---|:---|:---|
|High - Cabinet, High - Confidential, High - Sensitivity|Protected C | Extremely grave harm to an individual, organization or government. Examples: Information about police agents and other informants, Cabinet records or Cabinet-related records
|Medium - Personal, Medium - Sensitivity|Protected B | Serious harm to an individual, organization or government. Examples: Law enforcement and medical records, personnel evaluations and investigations, financial records, information subject to solicitor-client privilege or other legal privilege
|Low - Sensitivity|Protected A | Harm to an individual, organization or government. Examples: Home addresses, dates of birth, other low-risk personal information
|Low - Public|Public|No harm to an individual, organization or government. Examples: Job postings, communications to claim clerks, business contact information, research and background papers (without copyright restrictions)

------------------------------

***NEXT: ADD DATA***

------------------------------

### Add Data

**File**: Either upload a file that will be stored in the Catalogue Data Store, or use a link (URL) to your application.
+ Upload File: Select this to upload a resource to the Catalogue Data Store.

+ Link: Enter the URL of your application here.

**Resource Name** is the name of the resource as it will appear on the metadata record. 
STANDARD FILE NAMING
It is suggested to use a standard file name as it would appear in your file system and describe the resource using the other available fields. 

Click **Finished** when complete.  This will save your metadata record for the application in DRAFT status.

------------------------------

[RETURN TO TOP][1]

[RETURN TO DATA PUBLICATION WORKFLOW > BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #data-publication-workflow---bc-data-catalogue---web-service---api
[2]: ./dpw_bcdc.md

