---
layout: default
title: Geographic Resources
nav_order: 333
parent: Publication Workflow - Beta
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

## BC DATA CATALOGUE RESOURCE MANAGEMENT
**This document is being updated to correspond with the BC Data Catalogue Beta release**

1. Resources to a record can be the following types:
    - [Application](./dps_bcdc_w_application_2.md)
    - [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
    - [Tabular Data/Document](./dps_bcdc_w_dataset_2.md)
    - [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources that are sourced from the BC Geographic Warehouse are managed differently.
3. At times resources are only metadata about a resource that is not accessible or requires authorization to access.
4. If a resources requires authorization, we recommend that that process or form is added as a resource to the record, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below.

## GEOGRAPHIC DATA RESOURCE MANAGEMENT

**Title**: is the title of the resource as it will appear on the metadata record. 

**_Resource_**

+ **URL**: is a link to a file or resource stored elsewhere, e.g., a website or FTP site.
    - For resources that are not available unless authorized a link to a webpage or form to instruct consumers how to obtain access, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3)

+ **File**: is to upload a file, e.g., CSV, directly into the Catalogue Data Store.

 **BCGW Resources**

The **Manage BCGW Resources** button has not be enabled as of yet.

This describles the functionality in production.

The button will add the ability for users to custom download data from the BCGW if:
+ it is stored in the BCGW **and** 
+ they have permissions to access it **and**
+ the BCGW schema and object name (e.g., _schema.table_) has been added to the main page of the metadata record

1. Click the **Yes** button on the _Object is available, would you like to add the resource link?_ pop-up.
1. Fill in the following details, where the update cycle is the mandatory field:
	+ **Resource Description** is a detailed description of the resource.
	+ **Resource Update Cycle** describes how often the resource is updated.
	+ **Supplemental information**: Any additional relevant information about the resource can be included here.
	+ **Temporal Extent** If your dataset is temporal in nature, you may provide the relevant dates in this area
		+ **Beginning Date** is the start date for the preiod the data is captured for.
		+ **End Date** is the end date for the period the data is captured for. 
1. Click the **Save** button.
1. Click the **Finish** button on the _Successfully added._ pop-up.

---------------

**Type**: Select **Geographic Data**

+ Changes:
    - Moved from the Record Level (type) to the Resource Level (bcdc_type)
    - Database value of 'Geographic' has changed to all lowercase 'geographic'
    
---------------

**Resource Description**: 
+ Is a detailed description of the resource.

**Supplemental Information**: 
+ Any additional relevant information about the resource can be included here.

**Resource Update Cycle**: 
+ Describes how often the resource is updated.

+ Changes
    - New values: Nightly (nightly)
    - Order now in order of frequency

**_Temporal Extent_**:
If your dataset is temporal in nature, you may provide the relevant dates in this area
+ **Beginning Date** is the start date for the period the data is captured for.
+ **End Date** is the end date for the period the data is captured for. 

+ Changes
    - Database fields renamed from data_collection_start_date and data_collection_end_date

**Resource Storage Format**: describes the file extension for the resource.
+ Changes:
    - Moved from the Record Level to the Resource Level

**Resource Storage Location**: is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**Spatial Datatype**: refers to the datatype in the database. 
+ For data stored in the BC Geographic, choose SDO_GEOMETRY.  If you are unsure, choose N-A.

    |Spatial Datatype| Description|
    |:---|:---|
    |SDE_BINARY| This is the older ESRI based geometry that used to be what the BCGW prior to 2014, ESRI has moved to ST_GEOMETRY.|
    |SDO_GEOMETRY| This is Oracle geometry and what the BCGW and NRM uses predominately as their datatype.|
    |ST_GEOMETRY| This is the current ESRI based geometry.|
    |N-A **NEW** |  Select if not stored in a database, e.g., shape file (.shp)|
    

**Object Name**: is the object name as it appears in the BCGW: _SCHEMA.OBJECT_. Example: WHSE_BASEMAPPING.NTS_BC_CONTOUR_LINES_125M
+ For BC Geographic Datasets, this is what is used to automatically populate the metadata record with
    - The data definitions table that is extracted from the Oracle metadata.
    - For public datasets that are available in iMapBC:
        - The WMS resource
        - The Network Link KML resource
        - The Preview Map details
        - The link to iMapBC will that dataset's specific presenatations

+ Changes:
    - Moved from the Record Level to the Resource Level

**Projection Name**: is the projection of your geographic data. Select from the drop-down list.
+ For provincial data in the BC Geographic Warehouse as well as many other databases, these are stored as ESPG 3005: NAD83 BC Albers.

+ Changes:
    - Field values were being stored as full label test, e.g., 'ESPG_3005 - NAD83 BC Albers', now is the shorted value, e.g., 'epsg3005'

**JSON Table Schema**: (**NEW**)

**ISO Topic Category**: [Topic Category Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15) More information: [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)  

+ Changes:
    - Database field renamed - [see change log](https://github.com/bcgov/ckan-ui/blob/pages/pages/beta_schema_changes.md#geographic-data-resource-level-changes)

**Resource Type**: 
+ Is the type of resource: Data, Reports, Abstraction or Not Applicable (**NEW**)

**Resource Access Method**: describes how the end-user can access the data.

+ Is the way the resource is accessible: Appication, Direct Access, Indirect Access, Service or Other (**NEW**)

**_Preview Information_**:
+ These details are filled in automatically when:
    - Stored in the BC Geographic Warehouse
    - Have a public presentation in iMapBC
    - A WMS REST endpoint created
    - A Network Link KL file created.  
+ These fields can be used for other purposes
+ These values populate the **Preview** button map and **Link to iMapBC** button.

+ Changes: these fields moved from the Record Level to the Resource Level

+ **Layer Name**
+ **Preview Latitude** allows you to provide a map preview centroid latitude.
+ **Preview Longitude** allows you to provide a map preview centroid longitude.
+ **Preview Map Service URL** allows you to provide an alias for the map service URL.
+ **Preview Zoom level** allows you to provide an initial zoom level for the map preview.
+ **Image URL** shows a preview of the data as a static image.
+ **Link to iMap** shows an interactive preview of the data in iMapBC.

**_Geographic Extent_**:
+ **North/South/East/West** these are auto populated with the bounding box of the province.

+ Changes: these fields moved from the Record Level to the Resource Level


Click **Save** when done

+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application_2.md)
- [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
- [Tabular Data/Document](./dps_bcdc_w_dataset_2.md)
- [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
