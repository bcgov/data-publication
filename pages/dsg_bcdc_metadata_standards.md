---
layout: default
title: Metadata Standards
nav_order: 351
grand_parent: BC Data Catalogue
parent: Standards & Guidelines
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

Metadata fields that are mandatory in the catalogue are identied  

1. From the User Interface (UI)
    + As an asterisk (\*).
    + Refer to the UI [Record](dps_bcdc_w_record_mgmt_ui.md) and [Resource](dps_bcdc_w_resource_mgmt_ui.md) Management pages for more details.
1. From the API
    + See the link to the JSON Schema listed in the _Resources_ section of the API [Record](dps_bcdc_api_w_record_mgmt.md) or [Resource](dps_bcdc_api_w_resource_mgmt.md) Management pages.

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
