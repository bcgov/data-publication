---
layout: default
title: Data Replication
nav_order: 241
parent: BC Geographic Warehouse
grand_parent: Data Standards and Guidelines
has_toc: false
---

# DATA REPLICATION

There are currently three mechanisms in place to reload BC Geographic Warehouse data objects when the source objects change:

+ Feature Manipulation Engine (FME)
+ Materialized Views (MVW)
+ Spatial Data Replication (SDR)

This page describes standards and guidelines concerning the first of these - FME. This mechanism should be the default choice for all new DataBC data publications to the BC Geographic Warehouse.

-----------------------

## Purpose

This page provides standards and best practices for writing FME scripts to load data to the BC Geographic Warehouse.

-----------------------

## Audience

This page will be of interest to anybody building FME scripts as part of a data delivery to the BC Geographic Warehouse. 

-----------------------

## Table of Contents
+ [**RESPONSIBILITY FOR PUBLISHED DATA**](#responsibility-for-published-data)
+ [**DATABC FME FRAMEWORK**](#databc-fme-framework)
	+ [Starting Point FMW](#starting-point-fmw)
	+ [FMW File Naming](#fmw-file-naming)
+ [**FMW BEST PRACTICES**](#fmw-best-practices)
	+ [Filtering Point Data to BC Boundaries](#filtering-point-data-to-bc-boundaries)
	+ [Handling Complex Curve Data](#handling-complex-curve-data)
	+ [Proceeding Past Data Errors](#proceeding-past-data-errors)
+ [**KIRK**](#kirk)
-----------------------

## RESPONSIBILITY FOR PUBLISHED DATA

Individual business areas are responsible to ensure their data is complete and ready for publication. DataBC operates the BC Geographic Warehouse (BCGW) but is not responsible to assure the quality of the data. It is the responsibility of the business area to provide topologically correct and complete data.

[RETURN TO TOP][1]

-------------------------------------------------------

## DATABC FME FRAMEWORK

A step-by-step guide to using the DataBC FME Framework is available in the companion document [_Using the DataBC FME Framework_](dps_bcgw_w_databc_fme.md)

### Starting Point FMW

A sample FMW can be downloaded from [_Gogs_](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/delivery_kit/xyz_whse/WHSE_SCHEMA_NAME/dataload/bcgw_table_name_staging_csv_bcgw.fmw).  

+ Refer to [_Connecting to Gogs_](tips_tricks.md#connecting-to-gogs) for details on how to log in to Gogs.    

### FMW File Naming
The file naming convention consists of a series of components:

1. separated by underscore characters "_" and 
1. be all lowercase.

`[bcgw object name (in full)]_[source location]_[source format]_[destination location].fmw`

Contact the [DataBC Data Architecture Services](mailto:DataBC.DA@gov.bc.ca) team with any questions you may have. 

**BCGW Object Name (in full)**

+ This is the full name of the BCGW table being loaded into in lowercase, e.g., spi_wildlife_nonsensitive_sp

**Source location**

+ for database sources other than the BCGW: use instance name; e.g., envdlvr1
+ for BCGW as a data source, use "bcgw"
+ for file sources: use "staging" directory; i.e. staging

**Source Formats**
+ sde: for replicating from other SDE instances
+ odb: Oracle database table or view
+ svw: for instantiating SDE spatial views
+ gdb: file Geodatabase
+ shp: ESRI Shape
+ cov: ESRI Coverages
+ csv: Comma Seperated Value
+ xlsx: Excel Spreadsheet
+ multi: multiple files of multi formats

**Destination Location**
+ use destination name; i.e., "bcgw" 

**Example FMW File Names**

| BCGW Object Name | Source Location| Source Format | Destination Location|FMW Name Examples|
| :--- |:---:| :---: | :---: |:--- |
| site_env_remediation_sites_sp | envprod1 | odb | bcgw |`site_env_remediation_sites_sp_envprod1_odb_bcgw.fmw`|
| cbm_intgd_cadastral_fabric_sp | icfprd | sde | bcgw |`cbm_intgd_cadastral_fabric_sp_icfprd_sde_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | bcgw | svw | bcgw |`spi_wildlife_nonsensitive_sp_bcgw_svw_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | staging | gdb |bcgw |`spi_wildlife_nonsensitive_sp_staging_gdb_bcgw.fmw`|
| raad_aoa_provincial| staging |shp |bcgw |`raad_aoa_provincial_staging_shp_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | staging | cov |bcgw |`spi_wildlife_nonsensitive_sp_staging_cov_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | staging | xlsx |bcgw |`spi_wildlife_nonsensitive_sp_staging1_xlsx_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | bcdc | csv |bcgw |`spi_wildlife_nonsensitive_sp_bcdc_csv_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | staging | multi |bcgw |`spi_wildlife_nonsensitive_sp_staging_multi_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | api |csv |bcgw |`spi_wildlife_nonsensitive_sp_api_csv_bcgw.fmw`|
| spi_wildlife_nonsensitive_sp | webservice | csv |bcgw |`spi_wildlife_nonsensitive_sp_webservice_csv_bcgw.fmw`|


[RETURN TO TOP][1]

-------------------------------------------------------

## FMW BEST PRACTICES

See [_Using the DataBC FME Framework_](dsg_bcgw_databc_fme.md).

### Filtering Point Data to BC Boundaries
If there is a concern that a dataset may contain points incorrectly located far beyond the BC boundaries, this could cause errors when replicating the data to the BCGW. Therefore it is recommended that a filter ([_Tester transformer_](https://www.safe.com/transformers/tester/) in an FMW) be included to limit the points to a bounding box that approximates the extents of the BC boundaries. For example:
+ Latitude > 48
+ Latitude <= 60
+ Longitude < -114
+ Longitude > -139

In some cases, depending on the data, points outside the boundaries of BC are acceptable, so the filter bounding box should be expanded as necessary.

### Handling Complex Curve Data

When storing geometries with complex curve data into an SDO_GEOMETRY geometry object, ArcGIS client libraries (such as the one used by FME) write all complex curve parameter data into the SE_ANNO_CAD_DATA column. Complex curves are geometries defined, not by a series of points joined together by straight line segments, but rather by a set of parameter values.  

**For example**, a circle can be defined by specifying its centrepoint and a radius.  

The libraries do this because the complex curve geometry model used by input sources such as ST_GEOMETRY and file geodatabases is incompatible with the geometry model used by SDO_GEOMETRY - in short, there is no place in the SDO_GEOMETRY to store the complex curve information.  

The result of this is that when you view such data after load there may be some missing pieces - what were originally complex curves do not get rendered or get rendered incorrectly. Therefore, care must be taken to convert complex curve data to simple curve data before loading it into the BC Geographic Warehouse.  This is done by passing all features through the [_FME ArcStroker_](https://www.safe.com/transformers/arc-stroker/) transformer.

#### ArcStroker Parameters

|Parameter|Value|
|:---|:---|
|Stroke By|Maximum Deviation|
|Maximum Deviation|.0001|

### Proceeding Past Data Errors

By default, the [_FME Geodatabase Writer_](https://docs.safe.com/fme/html/FME_Desktop_Documentation/FME_ReadersWriters/geodatabase/GEODATABASE_SDE_writer.htm) will trigger an end to a data load once a feature fails to load (due to, for example, invalid geometry).  This will result in many good records not getting stored to the BCGW (i.e., a just partially loaded table). To prevent this from happening, the following FME writer parameters should be used:

|Parameter|Value|
|:---|:---|
|Ignore Failed Features|Yes|
|Max Number of Features to Ignore|-1|
|Dump Failed Features to File|Yes|
|Failed Feature Dunp Filename|$(FAILED_FEATURES)|

[RETURN TO TOP][1]

-------------------------------------------------------

## KIRK

_KIRK_ (**K**eeping **I**nformation **R**eplicated **C**ontinuously) is a system, built on top of the FME Framework, used by the DataBC program for loading data to the BCGW. 

Rather than the developer having to build an FMW for each table to be loaded, _KIRK_ allows the developer to define replication requirements using just a set of parameters.  The goal is for _KIRK_ to be able to handle the vast majority of replications.  

Currently, however, it is used just for the following case:
+ the source is a file geodatabase
+ the destination is the BCGW
+ the only transformers used are 
   + a [_Counter_](https://www.safe.com/transformers/counter/) (in cases where a BCGW table surrogate primary key needs to be populated)
   + an [_AttributeRenamer_](https://www.safe.com/transformers/attribute-renamer/) (in cases where the Oracle column names are different from the file geodatabase column names).
	
In the future, support for more transformers and source data types will be added.

Note that currently there is no way for a developer to create or change a _KIRK_ definition.  

For new publications of _KIRK_-able cases, the vendor should delivery an FMW that works and has been tested in the BCGW delivery environment.  It does not need to follow DataBC standards.  The DataBC ETL group will take responsibility for replacing the FMW with a _KIRK_ definition.


[RETURN TO TOP][1]

[RETURN TO DATA PUBLICATION SERVICES > STANDARDS AND GUIDELINES > BC GEOGRAPHIC WAREHOUSE][2]

-------------------------------------------------------

[1]: #data-replication
[2]: ./dsg_bcgw.md
