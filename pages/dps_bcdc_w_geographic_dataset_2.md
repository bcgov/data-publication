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
    - [Document/Tabular Data](./dps_bcdc_w_dataset_2.md)
    - [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
    - [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources that are sourced from the BC Geographic Warehouse are managed differently.
3. At times resources are only metadata about a resource that is not accessible or requires authorization to access.
4. If a resources requires authorization, we recommend that that process or form is added as a resource to the record, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).

[Changeslog#geographic-data-resource-level-changes](https://github.com/bcgov/ckan-ui/blob/pages/pages/beta_schema_changes.md#geographic-data-resource-level-changes)

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below.

## GEOGRAPHIC DATA RESOURCE MANAGEMENT

Geographic datasets defined in the Catalogue, have additional attributes available through the User Interface (UI), where-as the other resource types are a subset of the fields available, e.g., Projection, Geographic Extents, Map Preview.
+ Geographic resources are used for BC Geographic Warehouse (BCGW) datasets if they are spatially enabled or not. This is to allow for the Data Distributuon Service to be configured for those datasets.

The following items are the field labels visible in the UI, for the database or API field names refer to the [schema](https://cat.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset). 

**Name**:
+ Is the title of the resource as it will appear on the metadata record. 

**_Resource_**

+ **URL**: is a link to a file or resource stored elsewhere, e.g., a website or FTP site.
    - For resources that are not available unless authorized a link to a webpage or form to instruct consumers how to obtain access, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3)

+ **File**: is to upload a file, e.g., CSV, directly into the Catalogue Data Store.

+ **Beta Release Changes**: 

    |Changes| Comments|
    |:---|:---|
    |Required Field|No longer a mandatory field|

 **BCGW Resources**

For Beta, the **Manage BCGW Resources** button has not be enabled as of yet.

For BCGW resources to have the **Download/Access** button configured to pop-up the Persistant Order Widget (POW) the following have to be populated:
1. **Title**: BC Geographic Warehouse Custom Download
2. **Resource** Storage Location: BC Geographic Warehouse
3. **Object Name**: WHSE% or REG% populated

---------------

**Type**: Select **Geographic Data**

+ **Beta Release Changes**: 

    |Changes| Comments|
    |:---|:---|
    |Value|'Geographic' has changed to all lowercase 'geographic'
    
---------------

**Resource Description**: 
+ Is a detailed description of the resource.

**Supplemental Information**: 
+ Any additional relevant information about the resource can be included here.

**Resource Update Cycle**: 
+ Describes how often the resource is updated.

+ **Beta Release Changes**: 

    |Changes| Comments|
    |:---|:---|
    |Values|**NEW** Nightly (nightly); Unknown (unknown)
    |Order| Now in order of frequency not alphabetically|

**_Temporal Extent_**:
If your dataset is temporal in nature, you may provide the relevant dates in this area
+ **Beginning Date** is the start date for the period the data is captured for.
+ **End Date** is the end date for the period the data is captured for. 

+ **Changes**
    - Database fields renamed - [see change log](https://github.com/bcgov/ckan-ui/blob/pages/pages/beta_schema_changes.md#geographic-data-resource-level-changes)

**Resource Storage Format**: describes the file extension for the resource.
+ BCGW
    + The following is used in Production: Other
    + But others that also apply: Multiple, Oracle/SDE

+ **Beta Release Changes**: 

    |Changes| Comments|
    |:---|:---|
    |Values|**NEW** geopackage (gpkg); multiple


**Resource Storage Location**:
+ Is the location where the resource is stored. 
+ For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**Spatial Datatype**: 
+ Refers to the datatype in a database. 
+ For data stored in the BCGW, choose SDO_GEOMETRY.  If you are unsure, choose N-A.

    |Spatial Datatype| Description|
    |:---|:---|
    |SDE_BINARY| This is the older ESRI based geometry that used to be what the BCGW prior to 2014, ESRI has moved to ST_GEOMETRY.|
    |SDO_GEOMETRY| This is Oracle geometry and what the BCGW and NRM uses predominately as their datatype.|
    |ST_GEOMETRY| This is the current ESRI based geometry.|
    |N-A | **NEW** Select if not stored in a database||
    |UNKNOWN |**NEW** Select if not unknown what spatial data type it is stored as, e.g., shape file (.shp)|
    

**Object Name**: 
+ Is the object name as it appears in the BCGW: _SCHEMA.OBJECT_.
    +  E.g.,: WHSE_BASEMAPPING.NTS_BC_CONTOUR_LINES_125M
+ For BCGW Datasets, this is what is used to automatically populate the metadata record with
    - The data definitions table that is extracted from the Oracle metadata.
    - For public datasets that are available in iMapBC:
        - The WMS resource
        - The Network Link KML resource
        - The Preview Map details
        - The link to iMapBC will that dataset's specific presenatations

**Projection Name**: 
+ Is a drop down list of common projections used in BC for geographic data.
+ For the BCGW as well as many other databases, these are stored as [ESPG_3005 - NAD83 BC Albers](https://epsg.io/3005).

+ **Changes**:
    - Field values were being stored as full label text, e.g., 'ESPG_3005 - NAD83 BC Albers', now is the shorted value, e.g., 'epsg3005'

**JSON Table Schema**:
(**NEW**)

**ISO Topic Category**: 
[Topic Category Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15) More information: [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)  

**Resource Type**: 
+ Is the type of resource: Data, Reports, Abstraction or Not Applicable (**NEW**)

**Resource Access Method**:
+ Describes how the end-user can access the data.

+ Is the way the resource is accessible: Appication, Direct Access, Indirect Access, Service or Other (**NEW**)

**_Preview Information_**:
+ These details are filled in automatically when:
    - Stored in the BC Geographic Warehouse
    - Have a public presentation in iMapBC
    - A WMS REST endpoint created
    - A Network Link KL file created.  
+ These fields can be used for other purposes
+ These values populate the **Preview** button map and **View in iMapBC ->** button.

+ **Layer Name** is the name of the BCGW object.
+ **Preview Latitude** allows you to provide a map preview centroid latitude.
+ **Preview Longitude** allows you to provide a map preview centroid longitude.
+ **Preview Map Service URL** allows you to provide an alias for the map service URL.
+ **Preview Zoom level** allows you to provide an initial zoom level for the map preview.
+ **Image URL** shows a preview of the data as a static image.
+ **Link to iMap** shows an interactive preview of the data in iMapBC.

**_Geographic Extent_**:
+ **North/South/East/West** these are auto populated with the bounding box of the province.

Click **Save** when done

+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application_2.md)
- [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
- [Tabular Data/Document](./dps_bcdc_w_dataset_2.md)
- [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
