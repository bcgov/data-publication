---
layout: default
title: Glossary
nav_order: 120
has_toc: false
---

# GLOSSARY
This page is both a definition of terms as well as a description of acronyms.


## Audience

This document is intended for the use by any and all users of the documentation for the DataBC Program.

## Purpose

This document provides the intended audience, acronym and terminology definitions. 

-----------------------------------------------------------

## Definitions

Below is a list of terms and their definitions.

| |Acronym|Term|Definition|
|-|:---:|:---|:---|
|**A** ||<a name="application">Application</a>|A dataset type in the metadata record, this category is used for applications that provide access to data.|
|||ArcGIS | Developed by ESRI, ArcGIS is a geographic information system (GIS) for working with maps and geographic information maintained by the Environmental Systems Research Institute (Esri). It is used for creating and using maps, compiling geographic data, analyzing mapped information, sharing and discovering geographic information, using maps and geographic information in a range of applications, and managing geographic information in a database.|
| |AGO|ArcGIS Online|ArcGIS Online is a cloud-based mapping and analysis solution. It is used to make maps, analyze data, and to share and collaborate. Users can access workflow-specific apps, maps and data, and tools for being mobile in the field.|
|**B** |BCGW|BC Geographic Warehouse| The BCGW is a spatially enabled Oracle Database that contains thousands of spatial and non-spatial datasets. |
| || BCGW Delivery | Delivery is an instance of the BCGW that is open to vendors to use as a proving ground for all components being prepared for migration to BCGW Production. | 
| ||BC MapHub|The Map Hub is the official B.C. Government presence in ArcGIS Online.  It is a collaborative place to explore, engage, innovate and communicate using the language of maps and data.  Search for content, browse maps, ask questions and for government professionals - author content.  Make a map, share your data, collaborate with others. |
| || BCGW Production | Production is an instance of the BCGW that is the main operational data repository for the province’s SDI. |
| || BCGW Test  | Test is an instance of the BCGW that is used by DataBC, business areas, and vendors to review data warehouse objects and updates as deployed from vendor Delivery Kits. BCGW Test is not open for vendors to deliver to, rather DataBC staff deploy and populate objects. Once a Delivery Kit deploys successfully, notification is sent and connect details are provided to begin testing. |
| **D** ||<a name="dataset">Dataset</a>|A dataset type in the metadata record, this category is used for tables in Comma Separated Value (CSV) files, or MS Excel Spreadsheets (XLS) or possibly even tabular PDF files.|
||DBC|Data British Columbia | A database set up to hold DataBC applications and their system components. |
| ||<a name="data_custodian">Data Custodian</a>|A **Role** in the BC Data Catalogue, the Data Custodian is someone who:
|||| 1. protects and promotes the use of data holdings under their care;
|||| 2. sets policies, and is accountable for defining the appropriate use of the data;
|||| 3. provides the authoritative version of the data; and
|||| 4. is ultimately accountable for issues related to definition, collection, management and authorized use of the data. Every data holding should have one and only one Data Custodian - usually someone at the Director or Executive Director level.
| | |Delivery Kit | A collection of files that are required by DataBC to migrate to the Test and Production instance of the BCGW. Delivery Kits are built by a vendor and are required for new database objects, changes to existing, or updating data in the BCGW. |
| **E** |ETL|Extract Transform Load | Extracting data from operational sources, transforming it to fit operational needs, and loading it to the BCGW. |
| **F** |FME|Feature Manipluation Engine | ETL software written by Safe Software that is used by DataBC for the majority of data loads to BCGW feature classes. |
| **G** ||<a name="geographic_dataset">Geographic Dataset</a>|A dataset type in the metadata record, this category is used for data that contains geospatial information along with other data.  In the metadata record, additional geospatial metadata elements are available to be populated, e.g., spatial reference system. This category must be used for all BCGW Datasets.|
||GOGS|Go Git Service | DataBC uses the Gogs Repository as a Source Code Management System to store BCGW Data Delivery Kits. The developers should use their own forked repository during development. When the project is ready to be delivered to the Ministry for testing in the delivery environment or for a final delivery, the vendor makes a pull request to the Ministry's DA's. Details are available in the [Gogs Instructions for Vendors](https://gogs.data.gov.bc.ca/datasets/templates/src/master/delivery_kit/Gogs_Instructions_For_Vendors.md). |
| **O** | OGL-BC|Open Government Licence - British Columbia | Information on the Open Government Licence - British Columbia can be found [here](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc) | 
| **P** | |<a name="point_of_contact">Point of Contact | A **Role** in the BC Data Catalogue metadata record, the Point of Contact is the person available to contact for questions end-users may have about the dataset. | 
| **S** |SDE|Spatial Database Engine | Software created by ESRI which allows arcGIS to communicate with Relational Database Systems to manipulate spatially-enabled data. |
| |SDI|Spatial Data Infrastructure | DataBC’s geographic information infrastructure including the data warehouse, middle tier, servers, and related spatial services. |
| |SDO|Spatial Data Object | It is a data storage option for spatial attributes, created by Oracle Corporation
| **V** |VPN|Virtual Private Network | Service which provides secure, encrypted transport of traffic from external networks into the BC Government’s network (entitled SPAN/BC). It is intended for telecommuters, mobile workers, external partners, vendors and contractors who use commercial Internet Service Providers and need to access SPAN/BC. |
| **W** ||<a name="webservice_api">Web Service - API</a>|A dataset type in the metadata record, this category is used for metadata relating to web services or application programming interfaces.|

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > ADDITIONAL RESOURCES][2]

-------------------------------------------------------

[1]: #glossary
[2]: ../index.md#additional-references
