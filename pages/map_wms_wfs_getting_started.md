---
layout: default
title: WMS/WFS - Getting Started
parent: Web-based Mapping
nav_order: 88
has_children: true
has_toc: false
---

# GETTING STARTED WITH WMS AND WFS <!-- omit in toc -->

Getting up and running with WMS and WFS services can be intimidating. The goal of this guide is to demystify the basic use of these services in QGIS and ArcGIS Pro.

Note: This guide was prepared using QGIS 3.28.9 and ArcGIS Pro 3.1.3.

|**AUDIENCE**|
|:---:|
| *Data consumers* |

## Table of Contents <!-- omit in toc -->
- [Introduction to WMS and WFS](#introduction-to-wms-and-wfs)
- [Accessing WMS and WFS Services](#accessing-wms-and-wfs-services)
  - [GetCapabilities Requests](#getcapabilities-requests)
<!-- no toc -->

![QGIS logo](images/wms_wfs_getting_started/qgis_logo.png) **QGIS**
- [Loading a WMS Layer](map_getting_started_qgis_wms.md)
- [Loading a WFS Layer](map_getting_started_qgis_wfs.md)

![ArcGIS Pro logo](images/wms_wfs_getting_started/agp_logo.png) **ArcGIS Pro**
  - [Loading a WMS Layer](map_getting_started_arcgispro_wms.md)
  - [Loading a WFS Layer](map_getting_started_arcgispro_wfs.md)

-----------------------
## Introduction to WMS and WFS

[Web Map Services (WMS)](https://en.wikipedia.org/wiki/Web_Map_Service) and [Web Feature Services (WFS)](https://en.wikipedia.org/wiki/Web_Feature_Service) are standardized protocols for serving geospatial data, set by the Open Geospatial Consortium (OGC). OGC standards are widely supported by various GIS platforms, especially when compared against Esri Map and Feature Services, which are optimized for the ArcGIS platform.

**WMS** focuses on rendering maps as **images**, allowing users to visualize geospatial data using preset styles. Identify queries to see attributes can be made for individual features.

**WFS**, on the other hand, enables the retrieval and manipulation of **vector features**. WFS provides feature geometry, allowing for geospatial analysis, as well as attribute data to support analysis and user-defined styling.

Here's a summary of some of the differences:

| Feature           | WMS (Web Map Service)               | WFS (Web Feature Service)             |
|-------------------|------------------------------------|--------------------------------------|
| Data Type         | Raster data (images/maps)           | Vector data (geospatial features)    |
| Purpose           | Map visualization                   | Feature retrieval and manipulation  |
| Query Capability  | Limited                             | Extensive, easier to use (filter and sort by attributes)      |
| Data Format       | Image formats (PNG, JPEG)           | GML, KML, JSON, CSV      |
| Styling   | Choose from provided options        | Flexible     |
| Use Cases          | Basemaps, visual data inspection  | Geospatial analysis, custom map creation   |
| Example Use          | Add a streams basemap using an existing style    | Create buffer areas around streams with active water use licenses |

## Accessing WMS and WFS Services

All publicly available geospatial datasets (870 as of 2024/01/03) are available through WMS and WFS services. We can make use of a single handy URL to load all layers for each service type:

WMS: `https://openmaps.gov.bc.ca/geo/ows?SERVICE=WMS&REQUEST=GetCapabilities`

WFS: `https://openmaps.gov.bc.ca/geo/ows?SERVICE=WFS&REQUEST=GetCapabilities`

Feel free to move on to the walk-throughs on loading WMS into your software of choice ([QGIS](map_getting_started_qgis_wms.md) / [ArcGIS Pro](map_getting_started_arcgispro_wms.md)), or read the section below for a little more background on these connection URLs.
 
### GetCapabilities Requests
In general, GIS software will make use of a `GetCapabilities` request to connect to a WMS or WFS service. This request provides metadata about the available services, their capabilities, and the data they offer. Once the software knows the capabilities of the service, you can generally go about your business without you needing to delve into the inner workings of the service.

The `GetCapabilities` URLs provided above list the capabilities for *all* public layers served by DataBC. You can also find WMS `GetCapabilities` requests for individual layers on the [BC Data Catalogue](https://catalogue.data.gov.bc.ca/). For example, the Groundwater Wells [resource page](https://catalogue.data.gov.bc.ca/dataset/groundwater-wells/resource/c9b8b97f-1dfc-4558-bf10-713df749a7e0) lists: 

`https://openmaps.gov.bc.ca/geo/pub/WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW/ows?service=WMS&request=GetCapabilities`

The WFS `GetCapabilities` request can be formed by simply replacing `service=WMS` with `service=WFS`.

-----------------------

[RETURN TO TOP][1]

[1]: #top
