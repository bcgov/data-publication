---
layout: default
title: Distribution Workflow - Providers
nav_order: 52
parent: Data Distribution
grand_parent: Data Publication Services
has_toc: false
---

# DATA DISTRIBUTION WORKFLOW FOR PROVIDERS

This page describes the requirements and optiopns for distributing data from the BC Geographic Warehouse (BCGW).

This service allows for data in the BCGW to be orderable in a variety of formats using the BC Data Catalogue (BCDC) and iMapBC.

|**AUDIENCE**|  |
|:---:|:---:|
| *Data Providers* | *BA* |

## Table of Contents

+ [**CONFIGURABLE PRODUCTS**](#configurable-products)
+ [**REQUIREMENTS**](#requirements)
+ [**LIMITATIONS**](#limitations)
+ [**CONFIGURATION OPTIONS**](#configuration-options)

-----------------------

## CONFIGURABLE PRODUCTS

## REQUIREMENTS
All datasets in the BCGW that are configured for distrubtion require

1. A published dataset in the BC Geographic Warehouse.
2. A metadata record.
3. A profile defined as one the Security options below.
    - Named Users is the only profile that requires additional configuration. 

## LIMITATIONS

+ Max downloadable zipped file size is 2 GB.
+ Only the format options listed below are what is configured.
    - Addition file format types can be requested. Each business case will be reviewed to determine feasibility and value.

## CONFIGURATION OPTIONS
 ![](/images/grey_dash.png)
 
 |Type|Subtype | BC Data Catalogue <br/> for published metadata  | iMapBC <br/> for published presentations  | 
|:---|:---:|:---:|:---:|
|**Security** | Public | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Security** | IDIR	| ![](/images/green_check.png) | ![](/images/green_check.png)
|**Security** | Business BCeID | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Security** | Named Users <br/> can be a mix of IDIR and Business BCeID  | ![](/images/green_check.png) | ![](/images/green_check.png)  
||
|**Format** | CSV | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | ESRI File Geodatabse <br/> (fgdb) | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | ESRI Shape File<br/>  (shp) | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | GeoJSON | ![](/images/green_check.png) | ![](/images/green_check.png)
||
|**Spatial** | | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Area of Interest** | Entire dataset | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Area of Interest** | Subset dataset | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Projection**|BC Albers   |![](/images/green_check.png) | ![](/images/green_check.png) 
|**Projection**|UTM Zone 7 through 11  |![](/images/green_check.png) | ![](/images/green_check.png) 
|**Projection**|Geographc Lat/Long |![](/images/green_check.png) | ![](/images/green_check.png) 
||
|**Tabular** | | ![](/images/green_check.png) | Not available
|**Attribute Query** | Subset dataset | Not available | ![](/images/green_check.png) <br/> as defined in a definition query 

