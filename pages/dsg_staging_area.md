---
layout: default
title: Staging Areas
nav_order: 92
parent: Appendix - Common Items
has_toc: false
---

# STAGING AREA

DataBC manages multiple staging areas to allow for the transfer and storage of file based source datasets for the intent to be published via DataBC's access channels, including:

+ the BC Geographic Warehouse (BCGW)
+ the BC Data Catalogue (BCDC)
+ Tilecache

This page describes the staging areas, how to request access and specific requirements, including data quality. 

|**AUDIENCE**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Developers* | *Data Modellers* | *DataBC Catalogue Team* |

## Table of Contents
+ [**STAGING AREA REQUIREMENTS**](#staging-area-requirements)
+ [**STAGING AREA NAMING AND DATA QUALITY**](#staging-area-naming-and-data-quality)
+ [**AGO (ArcGIS ONLINE) STAGING AREA LOCATION AND ACCESS**](#ago-arcgis-online-staging-area-location-and-access)
+ [**BCGW STAGING AREA LOCATION AND ACCESS**](#bcgw-staging-area-location-and-access)
+ [**BC DATA CATALOGUE AS A STAGING AREA FOR THE BCGW**](#bc-data-catalogue-as-a-staging-area-for-the-bcgw)
+ [**DBC STAGING AREA LOCATION AND ACCESS**](#dbc-staging-area-location-and-access)
+ [**TILECACHE STAGING AREA LOCATION AND ACCESS**](#tilecache-staging-area-location-and-access)


-----------------------------------------------------------

## STAGING AREA REQUIREMENTS

+ Accepted formats:
   + ArcGIS File Geodatabases are required to be created in version 10.6 or earlier.
   + CSV
   + XLSX
   + Shape File
+ Not accepted formats:
   + Personal Geodatabases .
+ Datasets should be directly in the hierarchy directory, not in a sub folder of its own
+ Datasets should be in their final published form.
+ Datasets in the Staging directories are for read only, i.e., no in-place editing.
+ Do not use the Staging directories for backing-up your datasets. 
+ For formal archiving of datasets, please use your organization’s standards and processes.

-----------------------------------------------------------

## STAGING AREA NAMING AND DATA QUALITY

### Valid Geometry
+ Datasets are required to have valid geometries set at the [standard tolerances and precision](https://www.esri.com/arcgis-blog/products/arcgis-pro/analytics/geoprocessing-resolution-tolerance-and-hair/). 
   + XY Resolution should be 0.0001 meters (1/10 millimeters) or its equivalent in map units. For example, if a feature class is stored in state plane feet, the default precision will be 0.0003281 feet (0.003937 inches). If coordinates are in latitude-longitude, the default resolution is 0.000000001 degrees.
   + XY Tolerance should be 0.001 meters or its equivalent in map units.  This is 10 times larger than the default resolution value and is recommended in most cases.
+ Please use Check and/or Repair geometry tools prior to uploading to Staging.

### Naming and File Type Consistency
+ File naming and structure of each participating dataset must remain constant, i.e.,
   + File names must not change case or spelling.
   + File types must stay the same.
   + Fields/attribute names must not change case or spelling.
+ Geodatabase names should conform to naming standards as provided in:
 [BCGW File Geodatabase Standards](https://www2.gov.bc.ca/assets/gov/data/geographic/bcgw/file_geodatabase_standards.pdf)
+ See the [guidelines on file based content](dsg_bcdc_file_based_content.md) to assist in the structure of the content.
+ See the [Naming and Describing Standards](dsg_naming_describing.md) used for the BCGW as these too can assist in building a model or attributes of a file.

-----------------------------------------------------------

## AGO (ArcGIS ONLINE) STAGING AREA LOCATION AND ACCESS

+ This is a public facing web enabled location.
+ It is intended for use by [_BCs Map Hub_](https://governmentofbc.maps.arcgis.com/home/index.html) "content creators" who require URLs for files to be used in ArcGIS Online applications.
+ Files types located in this area should be restricted to images or documents (i.e. png, jpg, pdfs).
+ __Data is not permitted__ to be hosted in this area.
+ Location will be provided when granting access to this directory \...\agol_staging\
+ Directory access requests are to be submitted through [_Map Services_](faq.md#map-services) team.  Note: IDIR Access to this location is usually provided to content creators during setup of their BCs Map Hub account.
+ Usage notes.  The exact path+file extension must be referenced to access from web:
   + for this folder location \\data.bcgov\agol_staging\ (add remaining file path here)
   + the URL is: https://pub.data.gov.bc.ca/ago/ (add remaining file path here - including the file name and extension you wish to access)
   + Example:  BC Geocoder and Route Planner WAB app demo
      + https://pub.data.gov.bc.ca/ago/resources/apps/WidgetDemo/index.html

-----------------------------------------------------------

## BCGW STAGING AREA LOCATION AND ACCESS

+ The Staging Area is only accessible via the GTS Servers.
+ When uploading datasets to Staging, directories are to be mapped as:
   + Location will be provided when granting access to this directory \...\data_staging_bcgw\
   + The second level of the [_Data Classification Hierarchy_](dsg_bcgw_data_classification_hierarchy.md) is used to determine what folder the data is to be located in. 
         + This location will be assigned by DataBC DA.
+ Directory access requests are to be submitted through [Data Architecture Services](mailto:DataBC.DA@gov.bc.ca)

-----------------------------------------------------------

## BC DATA CATALOGUE AS A STAGING AREA FOR THE BCGW

+  The BC Data Catalogue (BCDC) is accessible to all IDIRs who are authorized on behalf of their branch or suborg to manage their data holdings.
  https://catalogue.data.gov.bc.ca/
+ Data intended for the BCGW and stored within BCDC's file store, are tabular with coordinate values that can be projected into point locations.
+ To acquire accounts for BCDC contact [_BC Data Catalogue Services_](faq.md#bc-data-catalogue-services) team
+ To publish data to the BCGW contact [Data Architecture Services](mailto:DataBC.DA@gov.bc.ca)

-----------------------------------------------------------

## DBC STAGING AREA LOCATION AND ACCESS

+ The DBC Staging Area is only accessible via the GTS Servers and to a small set of users.
+ When uploading datasets to DBC Staging, directories are to be mapped as:
   + will be provided when granting access to this directory \...\data_staging_dbc\
+ Directory access requests are to be submitted through [Data Architecture Services](mailto:DataBC.DA@gov.bc.ca)

-----------------------------------------------------------

## TILECACHE STAGING AREA LOCATION AND ACCESS

+ This staging area is only accessible to those who are part of creating the tilecache.
+ DataBC Webmapping manages and provides access.
+ Files in this directory must meet the requirements as with any other published files.
   + One acceptation is that all feature classes will be stored in a single FGDB per tilecache.
+ For more information, contact [_Map Services_](faq.md#map-services) team.

 
-----------------------------------------------------------
 
[RETURN TO TOP][1] 

[1]: #staging-area
