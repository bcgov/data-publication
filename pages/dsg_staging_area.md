---
layout: default
title: Staging Area
nav_order: 70
parent: Data Standards and Guidelines
has_toc: false
---

# STAGING AREA STANDARDS

This guide provides the necessary information for all locations and access to multiples staging areas, depending on the type of data being published.  Also provided is contact information for additional assistance.

-----------------------
## Table of Contents
+ [**AGO (ArcGIS ONLINE) STAGING AREA LOCATION AND ACCESS**](#ago-arcgis-online-staging-area-location-and-access)
+ [**BCGW STAGING AREA LOCATION AND ACCESS**](#bcgw-staging-area-location-and-access)
+ [**BC DATA CATALOGUE AS A STAGING AREA FOR THE BCGW**](#bc-data-catalogue-as-a-staging-area-for-the-bcgw)
+ [**DBC STAGING AREA LOCATION AND ACCESS**](#dbc-staging-area-location-and-access)
+ [**TILECACHE STAGING AREA LOCATION AND ACCESS**](#tilecache-staging-area-location-and-access)
+ [**STAGING AREA REQUIREMENTS**](#staging-area-requirements)
+ [**STAGING AREA NAMING AND DATA QUALITY**](#staging-area-naming-and-data-quality)

-----------------------
# Audience

These staging area standards are addressed specifically to:

+ people providing data content to the BC Geographic Warehouse,
+ developers providing data models and files as part of the DataBC delivery kit publication process,
+ developers describing web services that are consumed by DataBC processes (e.g., a JSON REST service consumed by a DataBC Extract-Transform-Load (ETL) processes),
+ DataBC staff who review data models and review draft BC Data Catalogue records.

# Purpose

DataBC manages multiple staging areas to allow for the transfer and storage of file based source datasets for the intent to be published via DataBC's access channels.

+ BC Geographic Warehouse (BCGW)
+ BC Data Catalogue (BCDC)
+ Tilecache

---------------------------------------------------------------------

## AGO (ArcGIS ONLINE) STAGING AREA LOCATION AND ACCESS

+ This is a public facing web enabled location.
+ It is intended for use by [_BCs Map Hub_](https://governmentofbc.maps.arcgis.com/home/index.html) "content creators" who require URLs for files to be used in ArcGIS Online applications.
+ Files types located in this area should be restricted to images or documents (i.e. png, jpg, pdfs).
+ Data is not permitted to be hosted in this area.
+ Location: \\data.bcgov\agol_staging\
+ Directory access requests are to be submitted through [_Map Services_](faq.md#map-services) team.  Note: IDIR Access to this location is usually provided to content creators during setup of their BCs Map Hub account.
+ Usage notes.  The exact path+file extension must be referenced to access from web:
   + for this folder location \\data.bcgov\agol_staging\[add remaining file path here]
   + the URL is: https://pub.data.gov.bc.ca/ago/ (add remaining file path here - including the file name and extension you wish to access)
   + Example:  BC Geocoder and Route Planner WAB app demo
      + \\data.bcgov\agol_staging\resources\apps\widgetDemo\index.html
      + https://pub.data.gov.bc.ca/ago/resources/apps/WidgetDemo/index.html
  
[RETURN TO TOP][1] 

-----------------------------------------------------------

## BCGW STAGING AREA LOCATION AND ACCESS

+ The Staging Area is only accessible via the GTS Servers.
+ When uploading datasets to Staging, directories are to be mapped as:
   + \\data.bcgov\data_staging_bcgw\
   + The second level of the [_Data Classification Hierarchy_](data_classification_hierarchy.md#data-classification-hierarchy) is used to determine what folder the data is to be located in. 
      + This location will be assigned by DataBC DA.
+ Directory access requests are to be submitted through [Data Architecture Services](mailto:DataBC.DA@gov.bc.ca)

[RETURN TO TOP][1] 

-----------------------------------------------------------

## BC DATA CATALOGUE AS A STAGING AREA FOR THE BCGW

+  The BC Data Catalogue (BCDC) is accessible to all IDIRs who are authorized on behalf of their branch or suborg to manage their data holdings.
  https://catalogue.data.gov.bc.ca/
+ Data intended for the BCGW and stored within BCDC's file store, are tabular with coordinate values that can be projected into point locations.
+ To acquire accounts for BCDC contact [_BC Data Catalogue Services_](faq.md#bc-data-catalogue-services) team
+ To publish data to the BCGW contact [Data Architecture Services](mailto:DataBC.DA@gov.bc.ca)

[RETURN TO TOP][1] 

-----------------------------------------------------------

## DBC STAGING AREA LOCATION AND ACCESS

+ The DBC Staging Area is only accessible via the GTS Servers and to a small set of users.
+ When uploading datasets to DBC Staging, directories are to be mapped as:
   + \\data.bcgov\data_staging_dbc\
+ Directory access requests are to be submitted through [Data Architecture Services](mailto:DataBC.DA@gov.bc.ca)

[RETURN TO TOP][1] 

-----------------------------------------------------------

## TILECACHE STAGING AREA LOCATION AND ACCESS

+ This staging area is only accessible to those who are part of creating the tilecache.
+ DataBC Webmapping manages and provides access.
+ Files in this directory must meet the requirements as with any other published files.
   + One acceptation is that all feature classes will be stored in a single FGDB per tilecache.
+ For more information, contact [_Map Services_](faq.md#map-services) team.

[RETURN TO TOP][1] 

-----------------------------------------------------------

## STAGING AREA REQUIREMENTS

+ ArcGIS Geodatabases are required to be created in version 10.2 or earlier.
+ Datasets should be directly in the hierarchy directory, not in a sub folder of its own
+ Datasets should be in their final published form.
+ Datasets in the Staging directories are for read only, i.e., no in-place editing.
+ Do not use the Staging directories for backing-up your datasets. 
+ For formal archiving of datasets, please use your organization’s standards and processes.

[RETURN TO TOP][1] 

-----------------------------------------------------------

## STAGING AREA NAMING AND DATA QUALITY

+ Datasets are required to have valid geometries set at the standard tolerances and precision. Please use Check and/or Repair geometry tools prior to uploading to Staging.
+ It is imperative the naming and structure of each participating dataset remain constant; as well, Geodatabase names should conform to naming standards as provided in:
 https://www2.gov.bc.ca/assets/gov/data/geographic/bcgw/file_geodatabase_standards.pdf
 
[RETURN TO TOP][1] 

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > NAMING AND DESCRIBING STANDARDS][2]

-------------------------------------------------------

[1]: #staging-area-standards
[2]: ../index.md#naming-and-describing-standards
