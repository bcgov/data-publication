---
layout: default
title: Metadata Standards
nav_order: 232
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

**Definition**:  _data about data_

Metadata is data (or information) which describes some aspect of data. Everything from database table descriptions, data relationship mapping, storing who created/updated data, purpose of the data, can be classified as metadata.  

### Benefits of Metadata

In the DataBC Program, we value the importance of using metadata to describe the data we serve and we strongly encourage activities that support and create valuable metadata documentation.

+ Provides business context and helps bring an understanding to the data
+ Facilitates data re-use and sharing
+ Defines data structure (i.e.: data flow, data relationships, data dependencies)
+ Enables historical data tracking (i.e.: audit columns)
+ Facilitates data design discussions
+ Provides data consistency 
+ Can be used to help troubleshoot data issues; i.e.
   + who is the data custodian / person responsible for the data?
   + what is the security classification?
   + will the change impact other data?

### Metadata should be:

+ Easy to access and understand for consumers within and outside the organization.
+ Produced throughout the application development life cycle.
+ Of high quality, and managed effectively.
+ Open to improvement, and have a feedback mechanism by which consumers can inform the custodian of incorrect or out of date metadata.

---------------

## MANDATORY METADATA FOR THE BC DATA CATALOGUE

Data elements _optionality_ for each dataset type are as follows:

|Section|Data Element|Example(s)|Application|Dataset|Geographic Dataset|Web Service - API|
|:---|:---|:---|:---:|:---:|:---:|:---:|
|_Dataset_|State|DRAFT|Required|Required|Required|Required|
||Title|_descriptive title_|Required|Required|Required|Required|
||URL|_https://....._|Required|Required|Required|Required|
||Organization|Ministry of Citizen Services|Required|Required|Required|Required|
||Sub-Organization|DataBC|Required|Required|Required|Required|
||Description|_detailed description about the data_|Required|Required|Required|Required|
||Purpose|_summary of the intentions for which the dataset was developed_|N/A|Optional|Optional|N/A|
||Data Quality|_descriptive text that cn include info about issues, completeness, consistency, etc._|N/A|Optional|Optional|N/A|
||Lineage Statement|_information about the events or source data used in constructing the data_|N/A|Optional|Optional|N/A|
||More Info|_supporting url(s)_|Optional|Optional|Optional|Optional|
||Keywords|_searchable term(s)_|Required|Required|Required|Required|
||ISO Topic Category|unknown|N/A|N/A|Required|N/A|
|_Contact_|Name|_contact's first and last name_|Required|Required|Required|Required|
||Email|_someone@somewhere.ca_|Required|Required|Required|Required|
||Organization|Ministry of Citizen Services|Required|Required|Required|Required|
||Sub-Organization|DataBC|Required|Required|Required|Required|
||Role|Custodian|Required|Required|Required|Required|
||Contact Displayed|Yes|Required|Required|Required|Required|
|_Data Currency / Update_|Resource Status|planned|Required|Required|Required|Required|
||Data type|Created|N/A|Required|Required|N/A|
||Date|_YYYY-MM-DD_|N/A|Required|Required|N/A|
|_Access & Security_|Who can view this data?|Public|N/A|Required|Required|Required|
||Who can view this record?|Public|Required|Required|Required|Required|
||Who can download this data?|Public|N/A|Required|Required|Required|
||Who can access this application|Public|Required|N/A|N/A|N/A|
||License||N/A|Required|Required|Required|
||Security Classification|LOW-PUBLIC|Required|Required|Required|Required|
|_Preview Information_|Layer name|Name of the layer for preview|N/A|N/A|Optional|N/A|
||Preview latitude|Latitude of layer for preview|N/A|N/A|Optional|N/A|
||Preview longitude|Longitude of layer for preview|N/A|N/A|Optional|N/A|
||Preview map service URL|URL of map service for preview|N/A|N/A|Optional|N/A|
||Preview zoom level|Zoom level for preview|N/A|N/A|Optional|N/A|
||Image URL|_URL for non map service images|N/A|N/A|Optional|N/A|
||Link to iMap|_link_|N/A|N/A|Optional|N/A|
|_Geographic extent_|North|60.0|N/A|N/A|Optional-system default|N/A|
||South|48.0|N/A|N/A|Optional-system default|N/A|
||East|-113.5|N/A|N/A|Optional-system default|N/A|
||West|-139.5|N/A|N/A|Optional-system default|N/A|
||Spatial Datatype|SDO_GEOMETRY|N/A|N/A|Optional|N/A|
||Object Name|_schema.table(view)_|N/A|N/A|Optional|N/A|

---------

## MANDATORY METADATA FOR BC GEOGRAPHIC WAREHOUSE RESOURCES

Table and column descriptions are required for all objects in the BC Geographic Warehouse.  These descriptions are created by the BCGW data modeller, in consultation with the custodian and DataBC data administration staff.  The medium for defining the descriptions is the [Dataset Logfile](dps_bcgw_w.md#dataset-logfile).

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
