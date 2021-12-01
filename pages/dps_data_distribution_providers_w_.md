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
+ [**CONFIGURATION OPTIONS**](#configuration-options)

-----------------------

## CONFIGURABLE PRODUCTS
Datasets configured for distribution: < 2 GB zipped 

## REQUIREMENTS
All datasets in the BCGW that are configured for distrubtion require

1. A metadata record.
1. Have a profile defined as one the Security options below.
    - Named Users is the only profile that requires additional configuration. 


## CONFIGURATION OPTIONS
 ![](/images/grey_dash.png)
 
 |Type|Subtype | BC Data Catalogue <br/> for published metadata  | iMapBC <br/> for published presentations  | 
|:---|:---|:---:|:---:|
|**Security** | Public | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Security** | IDIR	| ![](/images/green_check.png) | ![](/images/green_check.png)
|**Security** | Business BCeID | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Security** | Named Users <br/> can be a mix of IDIR and Business BCeID  | ![](/images/green_check.png) | ![](/images/green_check.png)  
||
|**Format** | CSV | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | ESRI e00 | Deprecated | Deprecated
|**Format** | ESRI File Geodatabse (fgdb) | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | ESRI Shape File (shp) | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | GeoJSON | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Format** | GeoPackage (gpkg) |Not available| Not available
||
|**Spatial** | | ![](/images/green_check.png) | ![](/images/green_check.png)
|**Spatial Extent** | Entire dataset | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Spatial Extent** | Subset dataset | ![](/images/green_check.png) | ![](/images/green_check.png) 
||
|**Tabular** | | ![](/images/green_check.png) | Not available
|**Attribute Query** | Subset dataset | Not available | ![](/images/green_check.png) 

