---
layout: default
title: Add or Modify a Record
nav_order: 33
parent: Publication Workflow Beta
grand_parent: BC Data Catalogue
has_children: true
has_toc: true
---

# BC DATA CATALOGUE RECORD CONTENT

**This document is being update to correstpond with the BC Data Catalogue Beta release**

## Table of Contents
+ [**ADD RECORD**](#add-record)
+ [**ADD RESOURCES**](#add-resources)
    - [**APPLICATIONS**](#add-application-resource)
    - [**GEOGRAPHIC DATA**](#add-geographic-data-resource)
    - [**TABULAR OR DOCUMENTS**](#add-tabular-or-document-resource)
    - [**WEBSERVICE OR API**](#add-weservice-or-api-resource)

---------------

## ADD RECORD
The button is defined as **Add Dataset** as this is a CKAN term used to define the record and all it's resources. As this word is used to mean other things, this document defines the metadata as a record.

**Title**: This is the title of your metadata record.
+ This is limited to 100 characters as it is used in the url creation.

**URL**: This is automatically generated while typing in the Title.

**Organization**: This is the Sub-Organization (often the Branch or Division) under which the metadata record is created.
+ The Minsitry or parent organization is no longer required to be defined at the record level.

**Description**: Provide a meaningful description of the dataset here. Be sure to include any information that would be relevant to an end-user of your dataset.

**Licence**: describes the license the data is being published under. See [Licences](./dps_bcdc_w.md#licences) section for more info.

**Contacts** 

+ **Name**: Contact full name
+ **Email**: Contact email address
+ **Organization**: Contact organization
    - Ministry level has been removed.
+ **Role**: Contact role type 
    1. [Point of Contact](./glossary.html#point_of_contact) (required) 
        - Recommend the first contact to be a generic inbox.
        - **NEW** On each record there is a **Contact Data Expert** button, this opens up an email with a defined email template that will go to the first contact listed.
    3. [Business Expert](./glossary.html/#business_expert) (optional)
    4. [Data Manager](./glossary.html/#data-manager) (optional)
    5. [Custodian](./glossary.html/#data_custodian) (optional) 
    6. [Data Steward](./glossary.html/#data-steward) (optional) 
    7. [Distributor](./glossary.html/#distributor) (optional) 

+ **Displayed**: Check this box to display the contact to all catalogue users (public access). Unchecked, this contact information will only be visible to those logged in as IDIR.

**Purpose**: This is a summary of the intentions for which the dataset was developed.

**Data Quality**: This is descriptive text that can include information about issues, completeness, consistency, etc.

**Lineage Statement**: This is information about the events or source data used in constructing the data.

**More Info**
+ **Description** (**NEW**): Allows description text to notify what a link pertains to when the URL uses a Permalink, e.g., for CMS Lite pages, it is recommend to use the + Permalink, thus when pages are moved around the link is not broken.
+ **URL**: Any related web site URL's can be added here.

**Security Classification**:
+ The Security Classification has been updated and records transformated to reflect the OCIO's standard.

    |BCDC Security Classication (**Old**)| [Information Security Classification Levels (**NEW**)](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)| Description|
    |:---|:---|:---|
    |Low - Public|**Public**|No harm to an individual, organization or government. Examples: Job postings, communications to claim clerks, business contact information, research and background papers (without copyright restrictions)|
    |Low - Sensitivity|**Protected A** | Confidential. Harm to an individual, organization or government. Examples: Home addresses, dates of birth, other low-risk personal information|
    |Medium - Personal, Medium - Sensitivity|**Protected B**| Confidential. Serious harm to an individual, organization or government. Examples: Law enforcement and medical records, personnel evaluations and investigations, financial records, information subject to solicitor-client privilege or other legal privilege|
    |High - Cabinet, High - Confidential, High - Sensitivity|**Protected C** | Confidential. Extremely grave harm to an individual, organization or government. Examples: Information about police agents and other informants, Cabinet records or Cabinet-related records|

**Who can view this data?**: describes who can view for example BC Geographic Warehouse (BCGW) resources associated with the metadata record in tools like iMapBC.
+ The order reflects the most accessible to the most secure

    |Access Type| Description
    |:---|:---|
    |Public| All users are able to access the dataset.
    |Government and Business BCeID| Only people with IDIR and Business BCeID credentials can access the dataset.
    |Government| Only IDIR credentials can access the dataset.
    |Named Users| Only specific named users can access the dataset.

**Who can download this data?**: desribes the security level for access to download BC Geographic Warehouse (BCGW) resources associated with the metadata record
+ The order reflects the most accessible to the most secure

    |Access Type| Description
    |-|-|
    |Public| All users are able to access the dataset.
    |Government and Business BCeID| Only people with IDIR and Business BCeID credentials can access the applciation.
    |Government| Only IDIR credentials can access the dataset.
    |Named Users| Only specific named users can access the dataset.
    |Not downloadable| Resource cannot be downloaded. Specifically for the BC Geographic Warehouse (BCGW), the dataset is not configured via the Distribution Service.

**Who can view this record?**: describes who can view the metadata record.
+ The order reflects the most accessible to the most secure

    |Access Type| Description
    |:---|:---|
    |Public | All users of the catalogue can view the metadata record.
    |IDIR | Only IDIR credentials can view the metadata record.

**Keywords**: These are the searchable terms for the metadata record. Enter meaningful keywords here. Think of what users may use for search terms to find the dataset in the Catalogue.

**State**: When creating a new metadata record, the state will be set to DRAFT once you click on this state. 

**Resource Status**: is the status of the dataset, service, API or applicaiton as described by one of the types below: 
+ A resource or record changes status over its lifecycle.
   
    |Data Update Status| Description|
    |:---|:---|
    |Ongoing|Resources that are regularly updated should be described as ongoing.|
    |Completed|Resources with no plan for future updates should be described as completed.|
    |Destroyed|Resources that no longer exist should be described as destroyed.|
    |Historical Archive|Resources that exist, but have been archived (can also be desribed as no longer relevant) should be described as historical archive.|
    |Obsolete|Resources that that have been replaced with another or have long since been maintained should be described as obsolete.|
    |Planned|Resources that do not currently exist, but are planned for the future, should be described as planned.|
    |Required|
**Record Lifecycle History**:
When there are changes to a resource in a metadata record, a new date type and corresponding date should be added to this section.
+ **Type** is used to provide details to users on when resources are created, published, modified, archived or destroyed. 
+ **Date** is the date the resource was either created, published, modified, archived or destroyed. 

---------------
# ADD RESOURCES
1. Resources to a record can be the following types:
    - [Application](#add-application-resource)
    - [Geographic Data](#add-geographic-data-resource)
    - [Tabular Data/Document](#add-tabular-or-document-resource)
    - [Webservice/API](#add-weservice-or-api-resource)
1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources that are sourced from the BC Geographic Warehouse are managed differently.
3. At times resources are only metadata about a resource that is not accessible or requires authorization to access.
4. If a resources requires authorization, we recommend that that process or form is added as a resource to the record, e.g. [Request Archaeology Inforamtion](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).

To add a resource:
1. Click the **Add Resource** button on the toolbar at the record leve.
1. Fill out all the required fields for each resource type as describled below.

## ADD APPLICATION RESOURCE

## ADD GEOGRAPHIC DATA RESOURCE

## ADD TABULAR OR DOCUMENT RESOURCE

## ADD WEBSERVICE OR API RESOURCE

[RETURN TO TOP][1]

[1]: #bc-data-catalogue-record-content
