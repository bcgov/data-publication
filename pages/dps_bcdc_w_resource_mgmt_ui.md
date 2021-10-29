---
layout: default
title:  Resource Management
nav_order: 332
parent: Content Mgmt/Use - UI
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

## RESOURCE MANAGEMENT IN THE BC DATA CATALOGUE UI

|**AUDIENCE**|**DEFINITION**|
|:---|:---|
|*Metadata Editors*|Users of the BC Data Catologue who prepare records and resources for publication and/or retirement.|
|*Metadata Admin*|Users of the BC Data Catalogue who can prepare records an resources for publication and/or retimement, including the publishing and archiving of records.|

## Table of Contents

+ [**RESOURCE TYPES**](#bc-geographic-warehouse-datasets)
    - [**Application Resources**](#application-resources)
    - [**Document/Tabular Dataset Resources**](#doument-and-tabular-dataset-resources)
    - [**Geographic Dataset Resources**](#geographic-dataset-resources)
         - [**BC Geographic Warehouse (BCGW) Datasets**](#bc-geographic-warehouse-datasets)
    - [**WebService and API Resources**](#webservice-and-api-resources)
+ [**ADD A RESOURCE**](#add-a-resource)
+ [**EDIT A RESOURCE**](#edit-a-resource)
    - [**Replace a File in the Catalogue Data Store**](#replace-a-file-in-the-catalogue-data-store)
+ [**RESOURCE TYPE SPECIFIC FIELDS**](#resource-type-specific-fields)

---------------
**Resources**
+ See the full list of value options for drop down fields, see the [BCDC Schema](https://catalogue.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#application-resource-level-changes)

---------------


# RESOURCE TYPES

1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources that are sourced from the BC Geographic Warehouse (BCGW) are managed differently.
3. Resources may be only metadata about a resource that is not accessible or requires authorization to access.
    + If a resource requires authorization, we recommend that that process or form is linked as a resource to the record, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).


## Application Resources

## Geographic Dataset Resources

### BC Geographic Warehouse Datasets

+ Geographic Data resources type is used if they are spatially enabled or not. 
   + This is to allow for the Data Distribution Service to be configured for those datasets.

+ For Beta, the **Manage BCGW Resources** button has not be enabled yet.

**Specific Field Requirements**
+ To have the **Download/Access** button configured to pop-up the Persistent Order Widget (POW) the following must be populated:
    1. **Name:** "BC Geographic Warehouse Custom Download"
    2. **Resource Storage Location:** "BC Geographic Warehouse"
    3. **Object Name:** e.g., _"WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP"_

+ **Resource Storage Location** select "other" (`other`) but others that also apply, "multiple" (`multiple`), "Oracle/SDE" (`oracle_sde`)

+ **Spatial Datatype** select "SDO_GEOMETRY"

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

+ **Projection Name** 
    + select ["ESPG_3005 - NAD83 BC Albers"](https://epsg.io/3005).
        - There are a few datasets, that extend past the province that are [WGS 84 -- WGS84 - World Geodetic System 1984](https://epsg.io/4326) 

## Documument and Tabular Dataset Resources

## WebService and API Resources

# ADD A RESOURCE

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below as noted in the [field section](#resource-type-specific-fields).

# EDIT A RESOURCE
**To edit a resource:**
1. Log In
1. Navigate to the record to edit (that you have the privileges to do so) and either:
    1. Click the **Pencil** icon on the Resource Card list on the right or
       - This will open the resource in edit mode.
    1. Click on the resource title or the View button.
        1. Click on the _Edit resource_ button.
1. Update the fiel(s) as needed. See the [field section](#resource-type-specific-fields) for more details.

## Replace a File in the Catalogue Data Store

1. Once in edit mode of the resouce
1. Click on the **File** circle
1. Click on the **paper clip** icon
1. Navigate to new replacement file
1. Click **Open**
1. Click **Save**

# RESOURCE TYPE SPECIFIC FIELDS

\* indicates required fields.

**Name**\* (`name`): 

+ Is the title of the resource as it will appear on the resource record and card.

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

[1]: #resource-management-using-the-bc-data-catalogue-ui
