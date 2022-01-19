---
layout: default
title: Record Management
nav_order: 331
grand_parent: BC Data Catalogue
parent: Content Mgmt/Use - UI
has_children: false
has_toc: false
---
# BC DATA CATALOGUE RECORD MANAGEMENT

|**AUDIENCE**|
|:---|
|[*Metadata Editors*](https://bcgov.github.io/data-publication/pages/glossary.html#metadata_editor)|
|[*Metadata Admin*](https://bcgov.github.io/data-publication/pages/glossary.html#metadata_admin)|

## Table of Contents
+ [**METADATA RECORD CREATION**](#metadata-record-creation)
+ [**METADATA RECORD MANAGEMENT**](#metadata-record-management)
   + [Data Elements on a Record](#data-elements-on-a-record)
      + [_Title_](#title) 
      + [_URL_](#url)
      + [_Published By_](#published-by)
      + [_Description_](#description)
      + [_Licence_](#licence)
      + [_Contacts_](#contacts)
      + [_Purpose_](#purpose)
      + [_Data Quality_](#data-quality)
      + [_Lineage Statement_](#lineage-statement)
      + [_More Info_](#more-info)
      + [_Security Classification_](#security-classification)
      + [_Who can view this data?_](#who-can-view-this-data)
      + [_Who can download this data?_](#who-can-download-this-data)
      + [_Who can view this record?_](#who-can-view-this-record)
      + [_Keywords_](#keywords)
      + [_State_](#state)
      + [_Resource Status_](#resource-status)
      + [_Record Lifecycle History_](#record-lifecycle-history)
+ [**RESOURCE MANAGEMENT**](#resource-management)
+ [**ADDITIONAL RESOURCES**](#additional-resources)

------------------------------

## METADATA RECORD CREATION

The button is defined as **Add Dataset** as this is a CKAN term used to define the record and all it's resources. As this word is used to mean other things, this document defines the metadata as a record.

1. Log into the [BC Data Catalogue](https://catalogue.data.gov.bc.ca) by clicking **Log In** on the upper right of the toolbar.
    + All users with an IDIR can log into the Catalogue but as an editor you will see **Add Dataset** in place of the **Log In** button.
1. Click the [**Add Dataset**] button.
1. Complete the [record](./glossary.md#record) details to describe what you are publishing and then you will be able to add different resource types after.
    + **NEW** This is a change from the previous Catalogue where you had to specify the Resource Type at the beginning. 
    + Follow the [metadata recrod managment section](#metadata-record-management) to complete all mandatory/required fields (minimum requirement). 
    + We suggest adding content to non-mandatory fields as this will help people to better understand and use the data as intended.
	+ Suggestions for metadata content can be found in Tips & Tricks > [Making Useful Metadata](./tips_tricks_making_useful_metadata.md#making-useful-metadata). 
1. Click the [**Save**] button. 

_Note:_ All new metadata records are created that allow the **State** to be set to **Draft**. 

------------------------------

## METADATA RECORD MANAGEMENT

### Data Elements on a Record

Below is a list of fields with supporting details.  

[RETURN TO TOP][1]

#### Title

This is the title of your metadata record and is a required field.

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

[RETURN TO TOP][1]

#### URL

This is automatically generated while typing in the _**Title**_ with special characters and spaces are replaced with underscores.
+ This is a required field.
+ This must be unique to the BC Data Catalogue.
+ This does not need to be the same as the Title.


[RETURN TO TOP][1]

#### Published By

This is the Sub-Organization (often the Branch or Division) under which the metadata record is created and published.
+ This is a required field

[RETURN TO TOP][1]

#### Description

Provide a meaningful description of the dataset here. Be sure to include any information that would be relevant to an end-user of your dataset, and is a required field.

[RETURN TO TOP][1]

#### Licence

Describes the license the data is being published under. 
+ This is a required field
+ See [Licences](./dps_bcdc_w.md#licences) section for more info.

[RETURN TO TOP][1]

#### Contacts

At least one contact is required. 

|Field Name |Descripion |Required/Optional|Comments|
|:---|:---|:---:|:---|
|**Name**| Contact full name or business area if group inbox|(required)| |
|**Email**| Contact email address|(required)| |
|**Organization**| Contact organization| |Ministry level has been removed|(required)|
|**Role**| Contact role type | | |
| |[Point of Contact](./glossary.md/#point_of_contact)| (required) |- Recommend the first contact to be a generic inbox. **NEW** On each record there is a **Contact Data Expert** button, that when selected will open up an email with a defined email template which will go to the first contact listed.|
| |[Access Approver](./glossary.md/#access_approver) |(optional) | **NEW** - Recommend that this role is not displayed to Public catalogue users.|
| |[Business Expert](./glossary.md/#business_expert) |(optional)| |
| |[Data Manager](./glossary.md/#data_manager) |(optional) | **NEW**|
| |[Custodian](./glossary.md/#custodian)| (optional) |- Recommend a custodian is identified and not displayed as a contact to the Public|
| |[Data Steward](./glossary.md/#data_steward)| (optional) | **NEW**|
| | [Distributor](./glossary.md/#distributor) |(optional) | |
|**Displayed**:|If the contact is visible to the public (checked) or when and IDIR user is logged in (unchecked)| (required)|

[RETURN TO TOP][1]

#### Purpose

This is a summary of the intentions for which the dataset was developed, and is an optional field. 
+ To provide a complete picture into the nature of the record and resources, it is encouraged to provide some text before publishing so consumers will understand the purpose of and how to use the published data.

[RETURN TO TOP][1]

#### Data Quality

This is descriptive text that can include information about issues, completeness, consistency, etc., and is an optional field.
+ To provide a complete picture into the record's quality, it is encouraged to provide some text before publishing so consumers will understand the data quality of the published data.

[RETURN TO TOP][1]

#### Lineage Statement

This is information about the events or source data used in constructing the data, and is an optional field.
+ To provide a complete picture into the record's source data, it si encouraged to provide some text before publishing so consumers will understand the underlying source of the published data.  

[RETURN TO TOP][1]

#### More Info

This is additional information (one or more references) to support the dataset or the pubishing organization, and the fields are an optional set of fields.
+ **Description** (**NEW**)
   + Allows description text to notify what a link pertains to when the URL uses a Permalink, e.g., for CMS Lite pages, it is recommend to use the + Permalink, thus when pages are moved around the link is not broken.
+ **URL**
   + Any related web site URL's can be added here.

[RETURN TO TOP][1]

#### Security Classification

The Security Classification has been updated and records transformed to reflect the OCIO's standard.
+ This is a required field.

|BCDC Security Classification (**Old**)| [Information Security Classification Levels (**NEW**)](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)| Description|
|:---|:---|:---|
|Low - Public|**Public**|No harm to an individual, organization or government. Examples: Job postings, communications to claim clerks, business contact information, research and background papers (without copyright restrictions)|
|Low - Sensitivity|**Protected A** | Confidential. Harm to an individual, organization or government. Examples: Home addresses, dates of birth, other low-risk personal information|
|Medium - Personal, Medium - Sensitivity|**Protected B**| Confidential. Serious harm to an individual, organization or government. Examples: Law enforcement and medical records, personnel evaluations and investigations, financial records, information subject to solicitor-client privilege or other legal privilege|
|High - Cabinet, High - Confidential, High - Sensitivity|**Protected C** | Confidential. Extremely grave harm to an individual, organization or government. Examples: Information about police agents and other informants, Cabinet records or Cabinet-related records|

[RETURN TO TOP][1]

#### Who can view this data?

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

[RETURN TO TOP][1]

#### Who can download this data?

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

[RETURN TO TOP][1]

#### Who can view this record?

Describes who can view the metadata record.
+ The order reflects the most accessible to the most secure.
+ This is a required field.

    |Access Type| Description
    |:---|:---|
    |Public | All users of the catalogue can view the metadata record.
    |IDIR | Only IDIR credentials can view the metadata record.
    
[RETURN TO TOP][1]

#### Keywords

These are the searchable terms for the metadata record, and at least one keyword is required, however, not limited to just one keywork 
+ Enter meaningful keywords here. 
+ Think of what users may use for search terms to find the dataset in the Catalogue.

[RETURN TO TOP][1]

#### State

When creating a new metadata record, the state will be set to **Draft**. To do so select the button ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) above the state.

* To change a state a record must be saved, edited by clicking on the button ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) above the state desired.

* Only states that can transition between eachother will be visible in edit mode.

+ This is a required field.

    |State|Record Visibility|Email Notificaiton|
    |:---|:---|:---|
    |Draft|Only editors and admin of an org can see these records |None|
    |Pending Publish|Only editors and admin of an org can see these records| Administrators |
    |Published|Published records are visiable to users |All Editors of that org|
    |Pending Archive|Pending archive records are visible to users until Archived |Administrators|
    |Archived|Only editors of an org can see these records |All Editors of that org |

**Changes**
+ REJECTED has been removed and a record moves from PENDING PUBLISH back to DRAFT

[RETURN TO TOP][1]

#### Resource Status

Defines the status of the dataset, service, API or application as described by one of the types below: 
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
    
[RETURN TO TOP][1]
   
#### Record Lifecycle History

When there are changes to a resource in a metadata record, a new date type and corresponding date should be added to this section.  This comprises of two required fields. 

**Type** is used to provide details to users on when resources are created, published, modified, archived, or destroyed. 
 * A date can be selected for each of these date types.

    |Type|Description
    |:---|:---|
    |Created| 
    |Published| 
    |Modififed| 
    |Archived|
    |Destroyed|
         
**Date** is the date the resource was either created, published, modified, archived, or destroyed. 
     +  Required when creating a record.

<a name=replacement_record>**Replacement Record**</a>: URL of the new record replacing this dataset after it is retired (archived).
+ Is required when **Resource Status** is **Obsolete**

<a name=retention_expiry_date>**Rentention Expiry Date**</a>:
+ Is required when **Resource Status** is **Historical Archive**

<a name=source_data_path>**Source Data Path**</a>:
+ Is required when **Resource Status** is **Historical Archive**

[RETURN TO TOP][1]

---------------

## RESOURCE MANAGEMENT

To add a resource:
1. Click the **Add Resource** button on the toolbar at the record level
1. Fill out all the required fields for each resource type as described in the [Resource Mangement](https://bcgov.github.io/data-publication/pages/dps_bcdc_w_resource_mgmt_ui.html) page.

[RETURN TO TOP][1]

---------------

## ADDITIONAL RESOURCES

+ See the full list of value options for drop down fields, see the [BCDC Schema](https://catalogue.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#application-resource-level-changes)

---------------
[RETURN TO TOP][1]

[1]: #bc-data-catalogue-record-management
