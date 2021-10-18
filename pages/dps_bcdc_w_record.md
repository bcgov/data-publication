---
layout: default
title: Records
nav_order: 321
parent: Publication Workflow
grand_parent: BC Data Catalogue
has_children: true
has_toc: true
---

## BC DATA CATALOGUE RECORD MANAGEMENT

**This document has been uppdated to correspond with the BC Data Catalogue Beta release that will go to production soon.**

For the classic catalogue pages see [BCDC Classic Worklfow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

---------------

## METADATA RECORD MANAGEMENT
The button is defined as **Add Dataset** as this is a CKAN term used to define the record and all it's resources. As this word is used to mean other things, this document defines the metadata as a record.

---------------
**Title** _(mandatory field)_

This is the title of your metadata record.

A well defined title reflects what the dataset or record is about. With many other produces the following together will assist to make a title unique and understanable to the public.

1. Subject
2. Type
3. Status (if multiple resources in different statuses, e.g., Draft, Proposed, Approved)
4. Extent (if smaller or larger than the province of BC)

Tips:

+ This is limited to 100 characters as it is used in the URL creation.
+ This text must be unique to the BC Data Catalogue.
+ Recommend to not include organization or program names in titles as these may change over time. Unless there is no other way to distinguish a dataset from another of similar title.
+ For records that will include multiple years, do not include the year in the title.

**URL** _(mandatory field)_

This is automatically generated while typing in the _**Title**_ with special characters and spaces are replaced with underscores.
+ This must be unique to the BC Data Catalogue.
+ This does not need to be the same as the Title.

**Organization** _(mandatory field)_

This is the Sub-Organization (often the Branch or Division) under which the metadata record is created.
+ The Ministry or parent organization is no longer required to be defined at the record level.

**Description**  _(mandatory field)_

Provide a meaningful description of the dataset here. Be sure to include any information that would be relevant to an end-user of your dataset, and is a required field.

**Licence** _(mandatory field)_

Describes the license the data is being published under. See [Licences](./dps_bcdc_w.md#licences) section for more info.

**Contacts** _(1 contact is required)_

|Field Name |Descripion |Required/Optional|Comments|
|:---|:---|:---:|:---|
|**Name**| Contact full name or business area if group inbox|(required)
|**Email**| Contact email address|(required)
|**Organization**| Contact organization| |Ministry level has been removed|(required)
|**Role**| Contact role type | 
| |[Point of Contact](./glossary.md/#point_of_contact)| (required) |- Recommend the first contact to be a generic inbox. **NEW** On each record there is a **Contact Data Expert** button, that when selected will open up an email with a defined email template which will go to the first contact listed.
| |[Access Approver](./glossary.md/#access_approver) |(optional) | **NEW** - Recommend that this role is not displayed to Public catalogue users.
| |[Business Expert](./glossary.md/#business_expert) |(optional)
| |[Data Manager](./glossary.md/#data_manager) |(optional) | **NEW**|
| |[Custodian](./glossary.md/#custodian)| (optional) 
| |[Data Steward](./glossary.md/#data_steward)| (optional) | **NEW**
| | [Distributor](./glossary.md/#distributor) |(optional) |
|**Displayed**:|If the contact is visible to the public (checked) or when and IDIR user is logged in (unchecked)| (required)|

**Purpose** _(optional field)_

This is a summary of the intentions for which the dataset was developed, and is an optional field. 
+ To provide a complete picture into the nature of the record and resources, it is encouraged to provide some text before publishing so consumers will understand the purpose of and how to use the published data.

**Data Quality** _(optional field)_

This is descriptive text that can include information about issues, completeness, consistency, etc., and is an optional field.
+ To provide a complete picture into the record's quality, it is encouraged to provide some text before publishing so consumers will understand the data quality of the published data.

**Lineage Statement** _(optional field)_

This is information about the events or source data used in constructing the data, and is an optional field.
+ To provide a complete picture into the record's source data, it si encouraged to provide some text before publishing so consumers will understand the underlying source of the published data.  

**More Info** _(optional field)_

This is additional information (one or more references) to support the dataset or the pubishing organization, and is an optional set of fields.
+ **Description** (**NEW**)
    - Allows description text to notify what a link pertains to when the URL uses a Permalink, e.g., for CMS Lite pages, it is recommend to use the + Permalink, thus when pages are moved around the link is not broken.
+ **URL**
    - Any related web site URL's can be added here.

**Security Classification** _(mandatory field)_

The Security Classification has been updated and records transformed to reflect the OCIO's standard.
    |BCDC Security Classification (**Old**)| [Information Security Classification Levels (**NEW**)](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)| Description|
    |:---|:---|:---|
    |Low - Public|**Public**|No harm to an individual, organization or government. Examples: Job postings, communications to claim clerks, business contact information, research and background papers (without copyright restrictions)|
    |Low - Sensitivity|**Protected A** | Confidential. Harm to an individual, organization or government. Examples: Home addresses, dates of birth, other low-risk personal information|
    |Medium - Personal, Medium - Sensitivity|**Protected B**| Confidential. Serious harm to an individual, organization or government. Examples: Law enforcement and medical records, personnel evaluations and investigations, financial records, information subject to solicitor-client privilege or other legal privilege|
    |High - Cabinet, High - Confidential, High - Sensitivity|**Protected C** | Confidential. Extremely grave harm to an individual, organization or government. Examples: Information about police agents and other informants, Cabinet records or Cabinet-related records|

**Who can view this data?** _(mandatory field)_

Describes who can view, for example, the BC Geographic Warehouse (BCGW) resources associated with the metadata record in tools like iMapBC.
+ The order reflects the most accessible to the most secure.
+ This is a required field.
+ To change this security in iMapBC, contact the Data Architecture team at databc.da@gov.bc.ca to discuss steps and configuration.

    |Access Type| Description
    |:---|:---|
    |Public| All users can access the dataset.
    |Government and Business BCeID| Only people with IDIR and Business BCeID credentials can access the dataset.
    |Government| Only IDIR credentials can access the dataset.
    |Named Users| Only specific named users can access the dataset.

**Who can download this data?** _(mandatory field)_

Describes the security level for access to download BC Geographic Warehouse (BCGW) resources associated with the metadata record
+ The order reflects the most accessible to the most secure.
+ This is a required field.
+ To change this security in the Distribution Service, contact the Data Architecture team at databc.da@gov.bc.ca to discuss steps and configuration.

    |Access Type| Description
    |-|-|
    |Public| All users are can access the dataset.
    |Government and Business BCeID| Only people with IDIR and Business BCeID credentials can access the application.
    |Government| Only IDIR credentials can access the dataset.
    |Named Users| Only specific named users can access the dataset.
    |Not downloadable| Resource cannot be downloaded. Specifically, for the BC Geographic Warehouse (BCGW), the dataset is not configured via the Distribution Service.

**Who can view this record?** _(mandatory field)_

Describes who can view the metadata record.
+ The order reflects the most accessible to the most secure.
+ This is a required field.

    |Access Type| Description
    |:---|:---|
    |Public | All users of the catalogue can view the metadata record.
    |IDIR | Only IDIR credentials can view the metadata record.

**Keywords** _(mandatory field)_

These are the searchable terms for the metadata record, and at least one keyword is required, however, not limited to just one keywork 
+ Enter meaningful keywords here. 
+ Think of what users may use for search terms to find the dataset in the Catalogue.

**State** _(mandatory field)_

When creating a new metadata record, the state will be set to DRAFT once you click on this state. 
+ Current there is a feature that allows greater visibility of editors across organizations. This is being reviewed.

    |State|Record Visibility|Email Notificaiton|
    |:---|:---|:---|
    |DRAFT|Only editors and admin of an org can see these records |None|
    |PENDING PUBLISH|Only editors and admin of an org can see these records| Administrators |
    |REJECTED| **Deleted** |
    |PUBLISHED|Published records are visiable to users | |All Editors of that org|
    |PENDING ARCHIVE|Pending archive records are visible to users until Archived |Administrators|
    |ARCHIVED|Only editors of an org can see these records |All Editors of that org |

**Resource Status** _(mandatory field)_

Is the status of the dataset, service, API or application as described by one of the types below: 
+ A resource or record changes status over its lifecycle.
+ This is a required field. 
   
    |Data Update Status|Description|
    |:---|:---|
    |Planned|Resources that do not currently exist, but are planned for the future, should be described as planned.|
    |Under Development|Resources that are under development, but are not necessarily complete in nature, should be described as under development.|
    |Ongoing|Resources that are regularly updated should be described as ongoing.|
    |Required| |
    |Completed|Resources with no plan for future updates should be described as completed.|
    |Obsolete|Resources that that have been replaced with another or have long since been maintained should be described as obsolete. When selected, additional information will be required - [**Replacement Record**](./dps_bcdc_record.md#replacement_record)|
    |Historical Archive|Resources that exist but have been archived (can also be defined as no longer relevant) should be described as historical archive. When selected, additional inforomation will be required - [**Retention Expiry Date**](./dps_bcdc_record.md#retention_expiry_date) and [**Source Data Path**](./dps_bcdc_record.md#source_data_path)|
    |Destroyed|Resources that no longer exist should be described as destroyed.|
   
**Record Lifecycle History** _(mandatory field)_

When there are changes to a resource in a metadata record, a new date type and corresponding date should be added to this section.  
+ **Type** is used to provide details to users on when resources are created, published, modified, archived, or destroyed. 

    |Type| Description
    |:---|:---|
    |Created|
    |Published|
    |Modififed|
    |Archived|
    |Destroyed|
       
    
+ **Date** is the date the resource was either created, published, modified, archived, or destroyed. 
     +  Required when creating a record.

<a name=replacement_record>**Replacement Record**</a>: URL of the new record replacing this dataset after it is retired (archived).
+ Is required when **Resource Status** is **Obsolete**

<a name=retention_expiry_date>**Rentention Expiry Date**</a>:
+ Is required when **Resource Status** is **Historical Archive**

<a name=source_data_path>**Source Data Path**</a>:
+ Is required when **Resource Status** is **Historical Archive**

---------------
## RESOURCE MANAGEMENT

For resource management best practices and tips see [Resource Management] 

To add a resource:
1. Click the **Add Resource** button on the toolbar at the record level
1. Fill out all the required fields for each resource type as described below.

Navigate to the resource type as needed:
- [Application](./dps_bcdc_w_application.md)
- [Geographic Data](./dps_bcdc_w_geographic_dataset.md)
- [Tabular Data/Document](./dps_bcdc_w_webservice_api.md)
- [Webservice/API](./dps_bcdc_w_webservice_api.md)

[RETURN TO TOP][1]

[1]: #bc-data-catalogue-record-management