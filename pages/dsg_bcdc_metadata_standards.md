---
layout: default
title: Metadata Standards
nav_order: 351
grand_parent: BC Data Catalogue
parent: BCDC Standards and Guidelines
has_toc: false
---

# METADATA STANDARDS

This page describes recommended metadata standards and provides a high-level summary of metadata requirements for data objects when publishing data to the BC Data Catalogue.

|**AUDIENCE**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Metadata Editors* | *DataBC Data Modellers* | *DataBC Catalogue Team* |

## Table of Contents
+ [**WHAT IS METADATA AND WHY IS IT IMPORTANT?**](#what-is-metadata-and-why-is-it-important)
	+ [Benefits of Metadata](#benefits-of-metadata)
	+ [Metadata should be:](#metadata-should-be)
+ [**MANDATORY METADATA FOR THE BC DATA CATALOGUE**](#mandatory-metadata-for-the-bc-data-catalogue)
+ [**MANDATORY METADATA FOR BC GEOGRAPHIC WAREHOUSE RESOURCES**](#mandatory-metadata-for-bc-geographic-warehouse-resources)
+ [**MANDATORY METADATA FOR RESOURCES NOT IN THE BC GEOGRAPHIC WAREHOUSE**](#mandatory-metadata-for-resources-not-in-the-bc-geographic-warehouse)
+ [**RESOURCES**](#resources)

-----------------------

## WHAT IS METADATA AND WHY IS IT IMPORTANT?

**Definition**:  [_Metadata_](glossary.md#metadata)

Metadata is data (or information) which describes some aspect of data. Everything from database table descriptions, data relationship mapping, storing who created/updated data, purpose of the data, can be classified as metadata.  

### Benefits of Metadata

In the DataBC Program, we value the importance of using metadata to describe the data we serve and we strongly encourage activities that support and create valuable metadata documentation.

+ Provides business context and helps bring an understanding to the data
+ Facilitates data re-use and sharing
+ Defines data structure (i.e.: data flow, data relationships, data dependencies)
+ Enables historical data tracking (i.e.: audit columns)
+ Facilitates data design discussions
+ Provides data consistency 
+ Supports user self-service to understand the purpose and characteristics of a data set
+ Can be used to help troubleshoot data issues; i.e.
   + who is the data custodian / person responsible for the data?
   + what is the security classification?
   + will the change impact other data?
   
There are international standards for metadata that DataBC follows. This provides interoperability with other data service utilities, meaning that descriptions of your data can be widely published and accessed (assuming your security profile allows this).

### Metadata should be:

+ Easy to access and understand for consumers within and outside the organization.
+ Produced throughout the application development life cycle.
+ Of high quality, and managed effectively.
+ Open to improvement, and have a feedback mechanism by which consumers can inform the custodian of incorrect or out of date metadata.

---------------

## MANDATORY METADATA FOR THE BC DATA CATALOGUE

Data elements _optionality_ for each dataset type are as follows:

|Section|Data Element|Example(s)|
|:---|:---|:---|
|_Dataset_|State|DRAFT|
||Title|_descriptive title_|
||URL|_https://....._|
||Sub-Organization|DataBC|
||Description|_detailed description about the data_|
||Purpose|_summary of the intentions for which the dataset was developed_|
||Data Quality|_descriptive text that cn include info about issues, completeness, consistency, etc._|
||Lineage Statement|_information about the events or source data used in constructing the data_|
||More Info|_supporting url(s)_|
||Keywords|_searchable term(s)_|
||ISO Topic Category|unknown|
|_Contact_|Name|_contact's first and last name_|
||Email|_someone@somewhere.ca_|
||Sub-Organization|DataBC|
||Role|Custodian|
||Contact Displayed|Yes|
|_Data Currency / Update_|Resource Status|
||Data type|Created|
||Date|_YYYY-MM-DD_|
|_Access & Security_|Who can view this data?|
||Who can view this record?|Public _defines who can see the data through different viewing applicaitons, e.g., the Catalogue or iMapBC_|
||Who can download this data?|Public _defines who can download the file_|
||Who can access this application|Public _defines who can see the metadata record_|
||License|See What Licence to use|
||Security Classification|LOW-PUBLIC|
|_Preview Information_|Layer name|Name of the layer for preview|
||Preview latitude|Latitude of layer for preview|
||Preview longitude|Longitude of layer for preview|
||Preview map service URL|URL of map service for preview|
||Preview zoom level|Zoom level for preview|
||Image URL|_URL for non map service images|
||Link to iMap|_link_|
|_Geographic extent_|North|60.0|
||South|48.0|
||East|-113.5|
||West|-139.5|
||Spatial Datatype|SDO Geometry|
||Object Name|_schema.table(view)_|

---------

## MANDATORY METADATA FOR BC GEOGRAPHIC WAREHOUSE RESOURCES

Table and column descriptions are required for all objects in the BC Geographic Warehouse.  These descriptions are created by the BCGW data modeller, in consultation with the custodian and DataBC data administration staff.  The medium for defining the descriptions is the [Dataset Model](dps_bcgw_w.md#dataset-model).

## MANDATORY METADATA FOR RESOURCES NOT IN THE BC GEOGRAPHIC WAREHOUSE

Spreadsheets (Excel or CSV files) uploaded to the BC Data Catalogue must be documented sufficiently so that people looking at the spreadsheet can understand what the columns mean. A good way of providing this information is to supply a *data dictionary* resource, explaining the purpose and content of the other resources. See for example, [_this resource_](https://catalogue.data.gov.bc.ca/dataset/bc-data-catalogue-content/resource/824f2a99-d738-4b63-a492-a906d4c37be0) for [_this dataset_](https://catalogue.data.gov.bc.ca/dataset/42f7ca99-e7f3-40f7-93d7-f2500cccc315).

-----------------------------------------------------------

## RESOURCES

The following links will provide you with additional information regarding metadata standards:

+ British Columbia Core Administrative and Descriptive Metadata Standard - _link to be added when it is published (or removed when this documentation published)_

+ [_Dublin Core Metadata Initiative_](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/)

+ [_North American Profile of ISO 19115:2003_](https://webstore.ansi.org/Standards/INCITS/INCITS4532009)

-----------------------------------------------------------

[RETURN TO TOP][1]

[1]: #metadata-standards
