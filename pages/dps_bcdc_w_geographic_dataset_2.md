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
**This document is actively being updated to correspond with the BC Data Catalogue Beta releases**

1. There are four defined resource types: 
    - [Application](./dps_bcdc_w_application_2.md)
    - [Document/Tabular Data](./dps_bcdc_w_dataset_2.md)
    - [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
    - [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources that are sourced from the BC Geographic Warehouse (BCGW) are managed differently.
3. Resources may be only metadata about a resource that is not accessible or requires authorization to access.
    + If a resources requires authorization, we recommend that that process or form is linked as a resource to the record, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).


## GEOGRAPHIC DATA RESOURCE MANAGEMENT

Geographic datasets defined in the Catalogue, have additional attributes available through the User Interface (UI), where-as the other resource types are a subset of the fields available.

**BC Geographic Warehouse (BCGW)** datasets
+ Geographic Data resources type is used if they are spatially enabled or not. This is to allow for the Data Distributuon Service to be configured for those datasets.
+ For Beta, the **Manage BCGW Resources** button has not be enabled as of yet.
+ To have the **Download/Access** button configured to pop-up the Persistant Order Widget (POW) the following have to be populated:
1. **Title**: BC Geographic Warehouse Custom Download
2. **Resource** Storage Location: BC Geographic Warehouse
3. **Object Name**: WHSE% or REG% populated

### User Interface (UI) Fields
+ The following items are the field labels visible in the UI, for the database or API field names refer to the [schema](https://cat.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset). 

**To add a resource**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below.

**Name**
+ Is the title of the resource as it will appear on the metadata record. 

**_Resource_ URL**
+ Is a link to a file or resource stored elsewhere, e.g., a website or FTP site.
   - For resources that are not available unless authorized a link to a webpage or form to instruct consumers how to obtain access, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3)

**_Resource_ File**
+ is to upload a file, e.g., CSV, directly into the Catalogue Data Store.

---------------

**Type**
+ Select **Geographic Data**
    
---------------

**Resource Description**:
+ Is a detailed description of the resource.

**Supplemental Information**
+ Any additional relevant information about the resource can be included here.
 
**Resource Update Cycle**
+ Describes how often the resource is updated.
+ **BCGW Specific** most common replication frequency is "Nightly".
    
+ **NEW Values** 'Nightly' (nightly); 'Unknown' (unknown)

**_Temporal Extent_ Beginning Date** 
+ If the dataset is temporal in nature, the start date for the period the data is captured for.

**_Temporal Extent_ End Date** 
+ If the dataset is temporal in nature, is the end date for the period the data is captured for. 

**Resource Storage Format**
+ Describes the file extension for the resource.
+ **BCGW Specific** select 'Other' but others that also apply, 'Multiple', 'Oracle/SDE'

+ **NEW Values** geopackage (gpkg); multiple

**Resource Storage Location**
+ Is the location where the resource is stored. 
+ For files that have been uploaded using the _Upload File_ above, choose 'Catalogue Data Store'.
+ **BCGW Specific** select: 'BC Geographic Warehouse'

**Spatial Datatype**
+ Refers to the datatype in a database. 
+ **BCGW Specific** select 'SDO_GEOMETRY'

    |Spatial Datatype| Description|
    |:---|:---|
    |SDE_BINARY| This is the older ESRI based geometry that used to be what the BCGW prior to 2014, ESRI has moved to ST_GEOMETRY.|
    |SDO_GEOMETRY| This is Oracle geometry and what the BCGW and NRM uses predominately as their datatype.|
    |ST_GEOMETRY| This is the current ESRI based geometry.|
    |N-A | **NEW** Select if not stored in a database||
    |UNKNOWN |**NEW** Select if not unknown what spatial data type it is stored as, e.g., shape file (.shp)|
    
**Object Name**
+ Is the name of the dataset stored in a database.
+ **BCGW Specific** enter the _SCHEMA.OBJECT_ , e.g., WHSE_BASEMAPPING.NTS_BC_CONTOUR_LINES_125M
    - The object name is what is used to automatically populate the metadata record with
        - The data definitions table that is extracted from the Oracle metadata.
        - For public datasets that are available in iMapBC:
            - The WMS resource
            - The Network Link KML resource
            - The Preview Map details
            - The link to iMapBC will that dataset's specific presenatations

**Projection Name**
+ Is a drop down list of common projections used in BC for geographic data.
+ **BCGW Specific** select [ESPG_3005 - NAD83 BC Albers](https://epsg.io/3005).

**JSON Table Schema**
+ **NEW Field**

**ISO Topic Category**
[Topic Category Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15) More information: [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)  

**Resource Type**
+ Is the type of resource

+ **NEW Value** 'Not Applicable'

**Resource Access Method**
+ Describes how the end-user can access the data.

+ **NEW Value** 'Other'

**_Preview Information_**
+ **BCGW Specific** these details are filled in automatically when:
    - Stored in the BC Geographic Warehouse
    - Have a public presentation in iMapBC
    - A WMS REST endpoint created
    - A Network Link KL file created.  
+ These fields can be used for other purposes
+ These values populate the **Preview** button map and **View in iMapBC ->** button.

    |Spatial Datatype| Description|
    |:---|:---|
    |**Layer Name**| is the name of the BCGW object.
    |**Preview Latitude**| allows you to provide a map preview centroid latitude.
    |**Preview Longitude**| allows you to provide a map preview centroid longitude.
    |**Preview Map Service URL**| allows you to provide an alias for the map service URL.
    | **Preview Zoom level**| allows you to provide an initial zoom level for the map preview.
    |**Image URL**| shows a preview of the data as a static image.
    |**Link to iMap**| shows an interactive preview of the data in iMapBC.

**_Geographic Extent_**
+ **North/South/East/West** these are auto populated with the bounding box of the province.

Click **Save** when done

+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application_2.md)
- [Document/Tabular Data](./dps_bcdc_w_dataset_2.md)
- [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
- [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
