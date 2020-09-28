---
layout: default
title: Glossary
nav_order: 120
has_toc: false
---

# GLOSSARY
This page is both a definition of terms as well as a description of acronyms.

-----------------------
## Table of Contents
+ [**Acronyms**](#acronyms)
+ [**Definitions**](#definitions)

-----------------------

# Audience

This document is intended for the use by any and all users of the documentation for the DataBC Program.

# Purpose

This document provides the intended audience acronym and terminology definitions. 

---------------------------------------------------------------------

## Acronyms

Below is a list of acronyms and their descriptions. 

| | Acronym | Description |
|:---:|:---:|:--- |
|**A**|[_AGO_](#ago)|ArcGIS Online|
|**B**|[_BCGW_](#bcgw) | British Columbia Graphical Warehouse |
|**D**|[_DBC_](#dbc) | Data British Columbia |
|**E**|[_ETL_](#etl) | Extract, Transform, Load |
|**F**|[_FME_](#fme) | Feature Manipulation Engine |
|**G**|[_Gogs_](#gogs)| Go Git Service |
| |[_GIS_](#gis)| Geographic Information System |
|**O**|[_OGL_BC_](#ogl-bc)| Open Government - Licence - British Columbia |
|**S**|[_SDE_](#sde)| Spatial Database Engine|
| |[_SDI_](#sdi)| Spatial Data Infrastructure|
| |[_SDO_](#sdo)| Spatial Data Option|
| **V** |[_VPN_](#vpn) | Virtual Private Network |

[RETURN TO TOP][1]

## Definitions

Below is a list of terms and their definitions.

| | Term | Definition |
|-|----|---------- |
|**A** |_ArcGIS_ | Developed by ESRI, ArcGIS (aka <a name=ago>_**AGO**_</a>) is a <a name=gis>_**GIS**_</a> for working with maps and geographic information. It is used for: creating and using maps; compiling geographic data; analyzing mapped information; sharing and discovering geographic information; using maps and geographic information in a range of applications; and managing geographic information in a database. |
|**B** |<a name=bcgw>_BCGW_</a>| The BCGW is a spatially enabled Oracle Database that contains thousands of spatial and non-spatial datasets. |
| | _BCGW_Delivery_ | Delivery is an instance of the BCGW that is open to vendors to use as a proving ground for all components being prepared for migration to BCGW Production. | 
| | _BCGW_Production_ | Production is an instance of the BCGW that is the main operational data repository for the province’s SDI. |
| | _BCGW_Test_ | Test is an instance of the BCGW that is used by DataBC, business areas, and vendors to review data warehouse objects and updates as deployed from vendor Delivery Kits. BCGW Test is not open for vendors to deliver to, rather DataBC staff deploy and populate objects. Once a Delivery Kit deploys successfully, notification is sent and connect details are provided to begin testing. |
| **D** |<a name=dbc>_DBC_</a> | A database set up to hold DataBC applications and their system components. |
| | _Delivery_Kit_ | A collection of files that are required by DataBC to migrate to the Test and Production instance of the BCGW. Delivery Kits are built by a vendor and are required for new database objects, changes to existing, or updating data in the BCGW. |
| **E** |<a name=etl>_ETL_</a> | Extracting data from operational sources, transforming it to fit operational needs, and loading it to the BCGW. |
| **F** |<a name=fme>_FME_</a> | ETL software written by Safe Software that is used by DataBC for the majority of data loads to BCGW feature classes. |
| **G** |<a name=gogs>_Gogs_</a> | DataBC uses the Gogs Repository as a Source Code Management System to store BCGW Data Delivery Kits. The developers should use their own forked repository during development. When the project is ready to be delivered to the Ministry for testing in the delivery environment or for a final delivery, the vendor makes a pull request to the Ministry's DA's. Details are available in the [Gogs Instructions for Vendors](https://gogs.data.gov.bc.ca/datasets/templates/src/master/delivery_kit/Gogs_Instructions_For_Vendors.md). |
| **O** | <a name=ogl-bc>_OGL-BC_| BC Government supporting information on Open Government Licence - British Columbia can be found [here](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc) | 
| **S** |<a name=sde>_SDE_</a> | Software created by ESRI which allows arcGIS to communicate with Relational Database Systems to manipulate spatially-enabled data. |
| |<a name=sdi>_SDI_</a> | DataBC’s geographic information infrastructure including the data warehouse, middle tier, servers, and related spatial services. |
| |<a name=sdo>_SDO_</a> | It is a data storage option for spatial attributes, created by Oracle Corporation
| **V** |<a name=vpn>_VPN_</a> | Service which provides secure, encrypted transport of traffic from external networks into the BC Government’s network (entitled SPAN/BC). It is intended for telecommuters, mobile workers, external partners, vendors and contractors who use commercial Internet Service Providers and need to access SPAN/BC. |

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > ADDITIONAL RESOURCES][2]

-------------------------------------------------------

[1]: #glossary
[2]: ../index.md#additional-references
