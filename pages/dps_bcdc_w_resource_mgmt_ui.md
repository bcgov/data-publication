---
layout: default
title:  Resource Management
nav_order: 332
parent: Content Mgmt/Use - UI
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

# RESOURCE MANAGEMENT IN THE BC DATA CATALOGUE USER INTERFACE (UI)

|**AUDIENCE**|
|:---|
|[*Metadata Editors*](./glossary.md#metadata_editor)|
|[*Metadata Admin*](./pages/glossary.md#metadata_admin)|

## Table of Contents

+ [**RESOURCE TYPES**](#resource-types)
   + [Application](#application)
   + [Document/Tabular Data](#document-and-tabular-data)
   + [Geographic Data](#geographic-data)
   + [WebService and API](#webservice-and-api)
+ [**ADD A RESOURCE**](#add-a-resource)
+ [**EDIT A RESOURCE**](#edit-a-resource)
   + [Replace a File in the Catalogue Data Store](#replace-a-file-in-the-catalogue-data-store)
+ [**DELETE A RESOURCE**](#delete-a-resource)
+ [**RESOURCE TYPE SPECIFIC FIELDS**](#resource-type-specific-fields)
+ [**DATABC SERVICES RESOURCE NAMING AND DESCRIBING GUIDELINES - DRAFT**](#databc-services-resource-naming-and-describing-guidelines---draft)
   + [**BC Geographic Warehouse**](#bc-geographic-warehouse)
      + [Exportable or Not Resources](#exportable-or-not-resources)
         - Exportable; Exportable not enabled; Export disabled (retired)
      + [Web Mapping Resources](#web-mapping-resources)
          - WMS; WFS; Network Link KML; iMapBC or other IMF2 
   + [**ArcGIS Online (AGO)**](#arcgis-online-ago-resources)
       - Data; Web maps; Web apps; Tle services
   + [**BC Data Catalogue Hosted Resources**](#bc-data-catalogue-hosted-resources)
+ [**ADDITIONAL RESOURCES**](#additional-resources)

## RESOURCE TYPES

There are four types of Resourses using in the BC Data Catalogue.  

1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources which are sourced from the BC Geographic Warehouse (BCGW) are managed differently.
3. Resources may be only metadata about a resource that is not accessible or requires authorization to access.
    + If a resource requires authorization, we recommend that that process or form is linked as a resource to the record, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).

### Application

A type of resource associated to a record, which is used for applications that provide access to data.

### Document and Tabular Data

A type of resource associated to a record, which is used for tables in Comma Separated Value (CSV) files, or MS Excel Spreadsheets (XLS) or possibly even tabular PDF files.

### Geographic Data

A resource type associated to a record, which is used for data that may, or may not, contains geospatial information along with other data.  Additional geospatial metadata elements are available to be populated, e.g., spatial reference system. This resource type **must** be used for all BCGW resources.

### WebService and API

A resource type associated to a record, which is used for metadata relating to web services or application programming interfaces (APIs).

[RETURN TO TOP][1]

## ADD A RESOURCE

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below as noted in the [field section](./dps_bcdc_w_resource_mgmt_ui.md#resource-type-specific-fields).

+ Only files less than 150MB in size can be uploaded to the Catalogue file store.


[RETURN TO TOP][1]

## EDIT A RESOURCE
**To edit a resource:**
1. Log In
1. Navigate to the record to edit (that you have the privileges to do so) and either:
    1. Click the **Pencil** icon on the Resource Card list on the right or
       - This will open the resource in edit mode.
    1. Click on the resource title or the View button.
        1. Click on the _Edit resource_ button.
1. Update the fiel(s) as needed. See the [field section](./dps_bcdc_w_resource_mgmt_ui.md#resource-type-specific-fields) for more details.


[RETURN TO TOP][1]

### Replace a file in the catalogue Data Store

+ Requirement:
    - Zipped folders can be uploaded but do not upload a file from within an already zipped folder.

1. Once in edit mode of the resouce
1. Click on the **File** circle
1. Click on the **paper clip** icon
1. Navigate to new replacement file
1. Click **Open**
1. Click **Save**

[RETURN TO TOP][1]

## DELETE A RESOURCE

Editors can delete resources in any published state

**To delete a resource:**
1. Log In
1. Navigate to the record to edit (that you have the privileges to do so) and either:
    1. Click the **trashcan** icon on the Resource Card list on the right or
       - This will open the resource in edit mode.
    1. Click on the resource title or the View button.
        1. Click on the _Delete resource_ button 

[RETURN TO TOP][1]

------------

## RESOURCE TYPE SPECIFIC FIELDS

\* indicates required fields.

**Name**\* (`name`): 

+ Is the name or titel of the resource as it will appear on the resource record and card.
+ A well defined title reflects what the resource is about and what the user will expect by accessing the resource. This is done by using actionable language, e.g., Download, Export, View, Explore and then details of what the resource is.
    - For a full list of [actionable language](https://polaris.shopify.com/content/actionable-language) 

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

**Resource** (`url`):
+ Is a link to a file or resource stored elsewhere.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

**Type**\* (`bcdc_type`): 
+ Is the resource type that defines the available fields for a resource.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|
|Select:|_'Application'_ (`application`)|_'Tabular'_ (`dataset`) |_'Geographic Dataset'_ (`geographic`)|_'WebService/API'_ (`webservice`)|

+ **Changes**: _Database values coverted to lowercase_

**Resource Description** (`description`): 
+ Is a detailed description of the resource.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

**Supplemental Information** (`supplemental_info`): 
+ Any additional relevant information about the resource can be included here.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

**Resource** Update Cycle\* (`resource_update_cycle`): 
+ Describes how often the resource is updated.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **NEW Values**: _'Nightly'_ (`nightly`); _'Unknown'_ (`unknown`)

**Temporal Extent** (`temporal_extent`): 
+ If the dataset is temporal in nature'.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **Beginning Date** (`beginning_date`): 
    - The start date for the period the data is captured for
    - **Changes**: _Database fields renamed_ 

+ **End Date** (`end_date`): 
    - The end date for the period the data is captured for.
    - **Changes**: _Database fields renamed_ 

**Resource Storage Format**\* (`format`): 
+ Describes the file extension for the resource

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **NEW Values** _'geopackage'_ (`gpkg`); _'multiple'_ (`multiple`)

**Resource Storage Location**\* (`resource_storage_location`):
+ 

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **Changes**: _All values are now lowercase_

**Object Name**\* (`object_name`): 
+ Is the name of the dataset stored in a database.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Changes**: _Moved from record level_

**Spatial Datatype**\* (`spatial_datatype`): 
+ The datatype in a database.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **Changes**:
    - _Moved from record level_
    - _Now a mandatory field_

|**Object Short Name** (`object_short_name`): 
+ Short name used for download for Shape Files.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Changes**: _Moved from record level_ 

**Object Table Comments** (`object_table_comments`): 
+ The data definition in a database.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Changes**: _Moved from record level_


**Details**: (`details`): 
+ For BCGW datasets, this is populated from the database metadata.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **Column Name** (`column_name`): Name of the column in a database.
+ **Short Name** (`short_name`): Short name used for download for Shape Files and CSV.
+ **Data Type** (`data_type`): Field type
+ **Data Precision** (`data_precision`): Field length
+ **Column Comments** (`column_comments`): Field definition

+ **Changes**: _Moved section from record level_

**Projection Name**\* (`projection_name`):
+ Is a drop down list of common projections used in BC for geographic data.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Changes**:
    - _Moved from record level_
    - _Database values now short names instead of full label_


**JSON Table Schema** (`json_table_schema`):
|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **Changes**: **NEW** field

**ISO Topic Category**\* (`iso_topic_category`): 
+ [Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15). 
+ [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Changes**: _Moved from record level_

**Resource Type**\* (`resource_type`): 
+ Is the type of resource. Being reviewed if useful.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+  **NEW Value**: _'Not Applicable'_ (`na`)

**Resource Access Method**\* (`resource_access_method`):
+ Describes how the end-user can access the data.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+  **NEW Value** _'Other'_ (`other`)

**Preview Information**: (`preview_info`) **Secton**: 
+ Automatically populated if public to build the Map Preview.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Layer Name** (`layer_name`): is the name of the BCGW object and is only different if the WMS uses a generalized dataset.
+ **Preview Latitude** (`preview_latitude`): allows you to provide a map preview centroid latitude.
+ **Preview Longitude** (`preview_longitude`): allows you to provide a map preview centroid longitude.
+ **Preview Map Service URL** (`preview_map_service_url`): allows you to provide an alias for the map service URL.
+ **Preview Zoom Level** (`preview_zoom_level`): allows you to provide an initial zoom level for the map preview.
+ **Image URL** (`preview_image_url`): shows a preview of the data as a static image.
+ **Link to iMap** (`link_to_imap`): shows an interactive preview of the data in iMapBC.

+ **Changes**: _Moved section from record level_ 


**Geographic Extent** (`geographic_extent`) **Secton**:
+ These are auto populated with the bounding box of the province.

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **North** (`north_bound_latitude`): 60.0
+ **South** (`south_bound_latitude`): 48.0
+ **East** (`east_bound_longitude`): -113.5
+ **West** (`west_bound_longitude`):-139.5

+ **Changes**: _Moved section from record level_

----------------

Click **Save** when done

+ Additional resources can be added by repeating the process above or adding other resource types.

[RETURN TO TOP][1]

---------------

## DATABC SERVICES RESOURCE NAMING AND DESCRIBING GUIDELINES - DRAFT

This section is currently being developed.

### BC Geographic Warehouse

+ BC Geographic Warehouse is a selection available in the Resource Storage Location.  
+ Certain resources will be generated on your behalf, including:
    - Exportable or not
         - This is created when working with the Data Publication Services team.
    - WMS
         - This is generated the week after publication to iMapBC.
         - However the script to automate the creation of these is being redevoloped but through request we can add on your behalf.
    - Network Link KML
         - This is generated the week after publication to iMapBC.
         - However the script to automate the creation of these is being redevoloped but through request we can add on your behalf.
+ Certain resources are in review for automatic generation, including:
    - ArcGIS Online if hosted or served out through DataBC
    - WFS
    - iMapBC 
+ Certain fields will be populated on your behalf, including:
    - Preview Details - includes map visible in the Preview popup and iMapBC link
    - Object Details

#### Exportable or Not Resources

|Catalogue Fields| Exportable|Not Exportable|Retired|Replaced|
|:---|:---|:---|:---|:---|
|Title |View or Export BC Geographic Warehouse details (custom download)|View BC Geographic Warehouse details (export not enabled)|View Retired BC Geographic Warehouse details (export disabled)|View Replaced BC Geographic Warehouse details (export disabled)|
|URL| Leave blank |Leave blank|Leave blank
|Type|Geographic|Geographic|Geographic|Geographic
|Resource Description|The Distribution Service allows for data to be exportable in various file formats from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.|The Distribution Service has not been enabled for export this data from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.
|Supplemenental Info|See the main dataset page for more information.|The Distribution Service has been disabled for the data from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.
|Supplemenental Info|Click <b>Access/Download</b> in the toolbar to download this dataset. For more information on using the distribution order form see [How to download data using the Catalogue or iMapBC](https://bcgov.github.io/data-publication/pages/dps_data_distribution_w.html).|See the main dataset page for more information.|See the main dataset page for more information.|See the main dataset page for more information.
|Resource Storage Format|multiple|Oracle/SDE|Oracle/SDE|Oracle/SDE
|Resource Storage Location|BC Geographic Warehouse|BC Geographic Warehouse|BC Geographic Warehouse|BC Geographic Warehouse
|Spatial Datatype|SDO Geometry|SDO Geometry|SDO Geometry|SDO Geometry|
|Object Name|SCHEMA.TABLE|SCHEMA.TABLE|SCHEMA.TABLE|SCHEMA.TABLE
|Prokection|EPSG_3005 - NAD83 BC Albers|EPSG_3005 - NAD83 BC Albers|EPSG_3005 - NAD83 BC Albers|EPSG_3005 - NAD83 BC Albers
|Resource Access Method|Indirect|Indirect|Indirect|Indirect|

**Specific Field Requirements to Enable Export**
+ To enable the **Download/Access** button to pop-up the Persistent Order Widget (POW) the following must be populated:
    1. **Name:** "BC Geographic Warehouse Custom Download"
    2. **Resource Storage Location:** "BC Geographic Warehouse"
    3. **Object Name:** e.g., _"WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP"_

+ **Object Name**
    - Is the name of the dataset stored in a database.
    - Enter the _SCHEMA.OBJECT_ , e.g., WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP
    - The object name is what is used to automatically populate the metadata record with
        - The data definitions table that is extracted from the Oracle metadata.
        - For public datasets that are available in iMapBC:
            - The _WMS getCapabilities request_ resources
            - The _Network Link KML_ resources
            - The _Preview Map_ details
            - The _View in iMapBC_ button will that dataset's specific presentations
     - Always check to make sure there is no space at the end of the value.

#### Web Mapping Resources

|Catalogue Fields| WMS|WFS|Network Link KML |iMapBC|
|:---|:---|:---|:---|:---|
|Title |View WMS getCapabilities request details|View WFS getCapabilities request details|View Retired BC Geographic Warehouse details (export disabled)|View Replaced BC Geographic Warehouse details (export disabled)|
|URL| Leave blank for all of these
|Type|Webservice/API|
|Resource Description|Web Mapping Service (WMS) allows for data to be fed out via a service from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.|
|Supplemenental Info|Click <b>Access/Download</b> in the toolbar to see or copy the WMS call. For more information see [Web Mapping Services](https://www2.gov.bc.ca/gov/content?id=95D78D544B244F34B89223EF069DF74E).|
|Resource Storage Format|wms|wfs|kml|html or geojson
|Resource Storage Location|BC Geographic Warehouse|
|Spatial Datatype|SDO Geometry|
|Object Name|SCHEMA.TABLE
|Prokection|ESPG_4326 - WSG84 World Geodedic System 1984|ESPG_4326 - WSG84 World Geodedic System 1984|ESPG_4326 - WSG84 World Geodedic System 1984|
|Resource Access Method|Service|Service|Service|Application|

### ArcGIS Online (AGO) Resources

|Catalogue Fields| Data|Web Maps|Web Apps|Tile Services|
|:---|:---|:---|:---|:---|
|Title |Data - Open item details ArcGIS Online (AGO)|Web map - Open item details ArcGIS Online (AGO)|Web app - Open item details ArcGIS Online (AGO)|Tile service - Open item details ArcGIS Online (AGO)|
|URL| Leave blank for all of these
|Type|Geographic|Application|Application|Service|
|Resource Description|The Distribution Service allows for data to be downloaded in various file formats from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.|
|Supplemenental Info|Click <b>Access/Download</b> in the toolbar to download this dataset. For more information on using the distribution order form see [How to download data using the Catalogue or iMapBC](https://bcgov.github.io/data-publication/pages/dps_data_distribution_w.html).|
|Resource Storage Format|ArcGIS Rest|other|other|other
|Resource Storage Location|BC Geographic Warehouse or ESRI ARcGIS Online if hosted|
|Spatial Datatype|SDO Geometry|
|Object Name|SCHEMA.TABLE
|Prokection|EPSG_3005 - NAD83 BC Albers or hosted is ESPG_3857|Not Applicable|Not Applicable|
|Resource Access Method|Direct|Application|Application|Direct|

## BC Data Catalogue Hosted Resources


[RETURN TO TOP][1]

---------------
## ADDITIONAL RESOURCES
+ See the full list of value options for drop down fields, see the [BCDC Schema](https://catalogue.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#field-label-and-value-changes)

---------------

[RETURN TO TOP][1]

[1]: #resource-management-in-the-bc-data-catalogue-user-interface-ui

