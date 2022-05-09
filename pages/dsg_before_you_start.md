---
layout: default
title: Before You Start
nav_order: 2
has_toc: false
---

# BEFORE YOU START 

--------------

Do you have a dataset that you'd like to publish through the [_DataBC Program_](https://data.gov.bc.ca/)? Before your data is published, we will need to gather some information from you. The questions on this page will help the [DataBC Data Architecture Services](faq.md#data-architecture-services) team learn about your requirements and to determine whether the DataBC Program can meet them.

|**AUDIENCE**|
|:---:|
| *Data Publishers* | 

-----------------------

## DATA PUBLICATION CHANNELS

The DataBC Program makes data available through combinations of several different channels:

+ [_BC Data Catalogue_](https://catalogue.data.gov.bc.ca)
    + [_Data Distribution Services_](https://www2.gov.bc.ca/gov/content?id=B19E16070B824DB481F49CEE3B9AF1F8) through the BC Data Catalogue, iMapBC and (___coming soon___) the Order Fulfiller Interface (OFI) Application Programming Interface (API)
+ [_BC Geographic Warehouse_](https://www2.gov.bc.ca/gov/content?id=18B291A12B4F42EA98169892F4B46D61)
+ _Web based Mapping_
    + [_BC Map Hub_](https://www2.gov.bc.ca/gov/content?id=DE0602BB42664AA28C9F059D45CC1CC2)
    + [_BC Map Services (WMS and WFS)_](https://www2.gov.bc.ca/gov/content?id=95D78D544B244F34B89223EF069DF74E)
    + [_iMapBC_](https://www2.gov.bc.ca/gov/content?id=C52F8C3BFE8C4110A63171337F363F43)

In addition, other agencies provide mechanisms for accessing DataBC data:

+ the Geographic Terminal Servers (GTS - available through [dts.gov.bc.ca](https://dts.gov.bc.ca))
+ [_BCData R package_](https://github.com/bcgov/bcdata)

There are five options for where data gets stored in the DataBC Program, each with its own benefits and drawbacks:

| | BC Geographic Warehouse | BC Data Catalogue | BC MapHub | pub.data.gov.bc.ca | External site |
|:---|:---:|:---:|:---:|:---:|:---:|
**Security** - Public | ![](/images/green_check.png) | ![](/images/green_check.png)  | ![](/images/green_check.png) <br /> through the public publication request form | ![](/images/green_check.png)  | ![](/images/green_check.png) |
**Security** - IDIR	| ![](/images/green_check.png) <br /> for metadata only | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Security** - Named Users | ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Security** - Role-based | ![](/images/green_check.png) | ![](/images/green_check.png) <br /> in combination with Public, IDIR, Named Users | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Security** - BCeID | ![](/images/grey_dash.png) | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Format** | BCGW dataset (Oracle object), ArcGIS Rest, atom, cded, cvs, e00, fgdb, geojson, georss, gft, html, json, kml, kmz, openapi-json, pdf, rdf, shp, tsv, txt, wms, wmts, xls, xlsx, xml, zip, other | Oracle object (spatial and non-spatial) | WMS, WFS, Shapefile, CSV, TXT, GPX, GeoJSON | Any | Any
**File Size** | < 150 MB | datasets configured for distribution: < 2 GB zipped | < 500 MB | > 150 MB | Any
**Download** - entire dataset | ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/green_check.png) <br /> for BCGW datasets: re-directed to the BC Data Catalogue <br /> for standalone datasets: direct download | ![](/images/green_check.png) | ![](/images/green_check.png)
**Download** - subset dataset | ![](/images/grey_dash.png) | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Spatial data** - view in iMap BC | ![](/images/grey_dash.png) | ![](/images/green_check.png) | ![](/images/grey_na.png) | ![](/images/grey_na.png) | ![](/images/grey_na.png)	
**Spatial data** - view in desktop mapping applications (i.e. ArcGIS, QGIS) | ![](/images/green_check.png) <br /> once downloaded | ![](/images/green_check.png) | ![](/images/green_check.png) <br/> can open data in ArcGIS via BC MapHub | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Spatial data** - view WMS (Web-Map Service) | ![](/images/green_check.png) <br /> once downloaded | ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Spatial data** - view WFS (Web Feature Service) | ![](/images/green_check.png) <br /> once downloaded | ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Spatial data** - view in BC MapHub | ![](/images/grey_dash.png) | ![](/images/green_check.png) | ![](/images/green_check.png) | ![](/images/grey_dash.png) | ![](/images/grey_dash.png)
**Non-spatial data (csv)** - view preview | ![](/images/green_check.png) | ![](/images/grey_na.png) | ![](/images/grey_na.png) | ![](/images/grey_na.png) | ![](/images/grey_na.png)
**Non-spatial data (csv)** - view point data on a map | ![](/images/green_check.png) | ![](/images/grey_na.png) | ![](/images/green_check.png) | ![](/images/grey_na.png) | ![](/images/grey_na.png)

[RETURN TO TOP][1]

[1]: #before-you-start
