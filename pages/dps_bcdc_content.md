---
layout: default
title: Add a Record Content
nav_order: 
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

**Title**: is the title of the resource as it will appear on the metadata record. 

### RESOURCE

+ **URL**: is a link to a file or resource stored elsewhere, e.g., a website or FTP site.
    - For resources that are not available unless authorized a link to a webpage or form to instruct consumers how to obtain access, e.g. [Request Archaeology Inforamtion](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3)

+ **FILE**: is to upload a file, e.g., CSV, directly into the Catalogue Data Store.

#### BCGW Resources

The **Manage BCGW Resources** button will add the ability for users to custom download data from the BCGW if:
+ it is stored in the BCGW **and** 
+ they have permissions to access it **and**
+ the BCGW schema and object name (e.g, _schema.table_) has been added to the main page of the metadata record

1. Click the **Yes** button on the _Object is available, would you like to add the resource link?_ pop-up.
1. Fill in the following details, where the update cycle is the mandatory field:
	+ **Resource Description** is a detailed description of the resource.
	+ **Resource Update Cycle** describes how often the resource is updated.
	+ **Supplemental information**: Any additional relevant information about the resource can be included here.
	+ **Temporal Extent** If your dataset is temporal in nature, you may provide the relevant dates in this area
		+ **Beginning Date** is the start date for the preiod the data is captured for.
		+ **End Date** is the end date for the period the data is captured for. 
1. Click the **Save** button.
1. Click the **Finish** button on the _Successfully added._ pop-up.
---------------

**Resource Description**: is a detailed description of the resource.

**Supplemental Information**: Any additional relevant information about the resource can be included here.

**Resource Update Cycle**: describes how often the resource is updated.

**Temporal Extent**:
If your dataset is temporal in nature, you may provide the relevant dates in this area
+ **Beginning Date** is the start date for the preiod the data is captured for.
+ **End Date** is the end date for the preiod the data is captured for. 

**Resource Stroage Format**: describes the file extension for the resource.

**Resource Storage Location**: is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**Spatial Datatype**: refers to the datatype in the database. 
+ For data stored in the BC Geographic, choose SDO_GEOMETRY.  If you are unsure, choose N-A.

    |Spatial Datatype| Description|
    |:---|:---|
    |SDE_BINARY| This is the older ESRI based geometry that used to be what the BCGW prior to 2014, most minitiries do not use this anymore.|
    |SDO_GEOMETRY| This is Oracle geometry and what the BCGW and NRM uses predominately as their datatype.|
    |ST_GEOMETRY| This is the current ESRI based geometry.|
    |N-A| Select if not stored in a database, e.g. , shaoe file (.shp)|
    

**Object Name**: is the object name as it appears in the BCGW: _SCHEMA.OBJECT_. Example: WHSE_BASEMAPPING.NTS_BC_CONTOUR_LINES_125M
+ For BC Geographic Datasets, this is what is used to populate automatically the metadata record with
    - The data definitions table that is extracted from the Oracle metadata.
    - For public datasets that are available in iMapBC:
        - The WMS resource
        - The Network Link KML resource
        - The Preview Map details
        - The link to iMapBC will that dataset's specific presenatations

**Projection Name**: is the projection of your geographic data. Select from the drop-down list.
+ For provincial data in the BC Geographic Warehouse as well as many other databases, these are stored as ESPG 3005: NAD83 BC Albers.

**JSON Table Schema**: (**NEW**)

**ISO Topic Category**: [Topic Category Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15) More information: [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)  

**Resource Type**: is the type of resource: Data, Reports or Abstraction.

**Resource Access Method**: describes how the end-user can access the data.

**Preview Information**:
+ These details are filled in automatically when:
    - Stored in the BC Geographic Warehouse
    - Have a public presenation in iMapBC
    - A WMS REST endpoint created
    - A Newwork Link KL file created.  
+ These fields can be used for other purposes
+ These values populate the **Preview** button map and **Link to iMapBC** button.

+ **Layer Name**
+ **Preview Latutude** allows you to provide a map preview centroid latitude.
+ **Preview Longitude** allows you to provide a map preview centroid longitude.
+ **Preview Map Service URL** allows you to provide an alias for the map service URL.
+ **Preview Zoom level** allows you to provide an initial zoom level for the map preview.
+ **Image URL** shows a preview of the data as a static image.
+ **Link to iMap** shows an interacive preview of the data in iMapBC.

**Geograhic Extent**:
+ **North/South/East/West** these are autopopulated with the bounding box of the province.


Cick **Save** when done

+ itional resources can be added by repeating the process above or adding other resource types.


------------------------------

## ADD TABULAR OR DOCUMENT RESOURCE

## ADD WEBSERVICE OR API RESOURCE

[RETURN TO TOP][1]

[1]: #bc-data-catalogue-record-content
