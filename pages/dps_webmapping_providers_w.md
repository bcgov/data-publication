---
layout: default
title: Layer Presentation Services
nav_order: 82
parent: Web-based Mapping
has_children: true
has_toc: false
---

# LAYER PRESENTATION SERVICES

This page describes the requirements and options for presenting spatial data from the BC Geographic Warehouse (BCGW) in multiple web-mapping services.

|**AUDIENCE**
|:---|:---|:---|:---|
|[*Data Publisher*](https://bcgov.github.io/data-publication/pages/glossary.html#data_publisher)|[*Custodian*](https://bcgov.github.io/data-publication/pages/glossary.html#custodian)|[*Data Manager*](https://bcgov.github.io/data-publication/pages/glossary.html#data_manager)|[*Data Steward*](https://bcgov.github.io/data-publication/pages/glossary.html#data_steward)

## Table of Contents

+ [**CONFIGURABLE PRODUCTS**](#configurable-products)
+ [**REQUIREMENTS**](#requirements)
+ [**LIMITATIONS**](#limitations)
+ [**CONFIGURATION OPTIONS**](#configuration-options)

-----------------------

## CONFIGURABLE PRODUCTS

## REQUIREMENTS
Spatial datasets in the BCGW may be configured for web-mapping services, this requires:

1. A published spatial dataset in the BC Geographic Warehouse.
1. A metadata record.
1. A profile defined as one of the Security options below.
    - Named Users is the only profile that requires additional configuration.
1. A presentation layer as created with the [Layer File Presentation document](./dsg_bcgw_layer_file_presentation.md)
   - And published through to iMapBC production.

## LIMITATIONS

+ Large datasets or with wide variety of size differences may see perfomance issues.
   - For certain datasets, like regional boundaries, a generalized dataset can be created to be used in web-mapping service.

## CONFIGURATION OPTIONS
 ![](/images/grey_dash.png)
 
 |Type|Subtype | Layer File Library| iMapBC <br/> for published presentations | WMS  | Network Link KML |BC Maphub Feature Layer 
|:---|:---:|:---:|:---:|:---:|:---:|:---:|
|**Security** | Public | ![](/images/green_check.png)| ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/green_check.png) 
|**Security** | IDIR	| ![](/images/green_check.png)| ![](/images/green_check.png) | ![](/images/green_check.png) | | Not Available *
|**Security** | Business BCeID | ![](/images/green_check.png)| ![](/images/green_check.png) | | | Not Available *
|**Security** | Named Users <br/> can be a mix of IDIR and Business BCeID  | ![](/images/green_check.png)| ![](/images/green_check.png) | Not Available | Not Available | Not Available *
||
|**Area of Interest** | Entire dataset| ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/green_check.png) <br/> uses Default (Outline, All, etc) |![](/images/green_check.png) | ![](/images/green_check.png) 
|**Area of Interest** |Subset dataset| ![](/images/green_check.png)<br/> using Definition Queries| ![](/images/green_check.png) <br/> using Definition Queries | ![](/images/green_check.png) <br/> using Definition Queries | Not Available | Not Available
||
|**Tabular** | | Not Available <br/> joins are not supported | Not Available |Not Available|Not Available|Not Available
