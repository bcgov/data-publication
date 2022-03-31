---
layout: default
title:  Resource Management
nav_order: 332
parent: Content Mgmt/Use - UI
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

# Resource managment in the BC Data Catalogue User Interface (UI)

|**Audience**|
|:---|
|[*Metadata Editors*](./glossary.md#metadata_editor)|
|[*Metadata Admin*](./pages/glossary.md#metadata_admin)|

## Table of Contents

+ [**Resource types**](#resource-types)
   + [Application](#application)
   + [Document/Tabular Data](#document-and-tabular-data)
   + [Geographic Data](#geographic-data)
   + [WebService and API](#webservice-and-api)
+ [**Add a Resource**](#add-a-resource)
+ [**Edit a Resource**](#edit-a-resource)
   + [Replace a File in the Catalogue Data Store](#replace-a-file-in-the-catalogue-data-store)
+ [**Delete a Resource**](#delete-a-resource)
+ [**Resource type specfic fields**](#resource-type-specific-fields)
      + [_Name_](#name) 
      + [_Resource_](#url)
      + [_Type_](#type)
      + [_Resource description_](#resouce-description)
      + [_Supplemental information_](#supplemental-information)
      + [_Frequency of resource update_](#frequency-of-resource-update)
      + [_Resource data last updated_](#resource-data-last-updated)
      + [_Data collection period_](#data-collection-period)
      + [_Resource storage format_](#resource-storage-format)
      + [_Resource storage location_](#resource-storage-location)
      + [_Spatial datatype_](#spatial-datatype)
      + [_Object name_](#object-name)
          + [_Object short name_](#object-short-name)
          + [_Object table comments_](#object-table-comments)
          + [_Details_](#details)
      + [_Projection name_](#projection name)
      + [_JSON Table Schema_](#json-table-schema)
      + [_ISO Topic Category_](#iso-topic-category)
      + [_Resource type_](#resource-type)
      + [_Resource access method_](#resource-access-method)
      + [_Preview information_](#preview-information)
      + [_Geographic extent_](#geographic-extent)
+ [**DataBC Services - Resource naming and describle guidelines - DRAFT**](#databc-services-resource-naming-and-describing-guidelines---draft)
   + [**BC Geographic Warehouse**](#bc-geographic-warehouse)
      + [Exportable or Not Resources](#exportable-or-not-resources)
         - Exportable; Exportable not enabled
      + [Retired or Replaced Resources](#retired-or-replaced-resources)
         - Export disabled: retired or replaced
      + [Generalized Resources](#generalized-resources)
      + [Web Mapping Resources](#web-mapping-resources)
         - WMS; WFS; Network Link KML; iMapBC or other IMF2 
   + [**ArcGIS Online (AGO)**](#arcgis-online-ago-resources)
       - Data; Web maps; Web apps; Tle services
   + [**BC Data Catalogue Hosted Resources**](#bc-data-catalogue-hosted-resources)
+ [**Additional resources**](#additional-resources)

## Resource types

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

## Add a Resource

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below as noted in the [field section](./dps_bcdc_w_resource_mgmt_ui.md#resource-type-specific-fields).

+ Only files less than 150MB in size can be uploaded to the Catalogue file store.


[RETURN TO TOP][1]

## Edit a Resource
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

## Delete a Resource

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

## Resource type specific fields

\* indicates required fields.

### **Name** (`name`) <a name="name"></a>

+ Is the name or titel of the resource as it will appear on the resource record and card.
+ A well defined title reflects what the resource is about and what the user will expect by accessing the resource. This is done by using actionable language, e.g., Download, Export, View, Explore and then details of what the resource is.
    - For a full list of [actionable language](https://polaris.shopify.com/content/actionable-language) 

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Resource** (`url`) <a name="url"></a>
+ Is a link to a file or resource stored elsewhere.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Type** (`bcdc_type`) <a name="type"></a>
+ Is the resource type that defines the available fields for a resource.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|
|Select:|_'Application'_ (`application`)|_'Tabular'_ (`dataset`) |_'Geographic Dataset'_ (`geographic`)|_'WebService/API'_ (`webservice`)|

### **Resource description** (`description`)  <a name="resouce-description"></a>
+ Is a detailed description of the resource.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Supplemental information** (`supplemental_info`) <a name="supplemental-information"></a>
+ Any additional relevant information about the resource can be included here.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Frequency of resource update** (`resource_update_cycle`) <a name="frequency-of-resource-update"></a>
+ Describes how often the resource is updated.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Resource data last updated** (`last_modified`)  <a name="resource-data-last-updated"></a>
+ Describes how often the resource is updated.
+ This is only visible in view mode for datasets:
    + Uploaded to the catalogue itself
    + Published to the BC Geographic Warehouse
        + An automated system pushes the reloaded timestamp
+ If interested in setting up your own automated processes to update via the API, contact us at the [Data Systems and Services Request System](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and ask for more information on how to enhance to your offerings in the Catalogue.

### **Data collection period** (`temporal_extent`)  <a name="data-collection-period"></a>
+ A Start and/or End Data can be added if the data reflects a period of time.'.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

+ **Beginning date** (`beginning_date`)
    - The start date for the period the data is captured for

+ **End date** (`end_date`): 
    - The end date for the period the data is captured for.

### **Resource storage format** (`format`) <a name="resource-storage-format"></a>
+ Describes the file extension for the resource

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Resource storage location** (`resource_storage_location`) <a name="resource-storage-location"></a>
+ The location the data is stored in

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Spatial datatype** (`spatial_datatype`) <a name="spatial-datatype"></a>
+ The datatype in a database.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Object name** (`object_name`) <a name="object-name"></a>
+ Is the name of the dataset stored in a database.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

#### **Object short name** (`object_short_name`) <a name="object-short-name"></a>
+ For BCGW datasets, the short name used for download for Shape Files.
+ This is a non-editable field and only show when the **Resource storage location** is set to 'BC Geographic Warehouse'
+ This is populated via an automated process pushed from the BCGW to the Catalogue.

#### **Object table comments** (`object_table_comments`) <a name="object-table-comments"></a> 
+ For BCGW datasets, the data definition in a database.
+ This is a non-editable field and only show when the **Resource storage location** is set to 'BC Geographic Warehouse'
+ This is populated via an automated process pushed from the BCGW to the Catalogue.

#### **Details**: (`details`) **Section** <a name="details"></a>
+ For BCGW datasets, this is populated from the database metadata.
+ This is a non-editable field and only show when the **Resource storage location** is set to 'BC Geographic Warehouse'
+ This is populated via an automated process pushed from the BCGW to the Catalogue.
   + **Column name** (`column_name`): Name of the column in a database.
   + **Short name** (`short_name`): Short name used for download for Shape Files and CSV.
   + **Data type** (`data_type`): Field type
   + **Data precision** (`data_precision`): Field length
   + **Column comments** (`column_comments`): Field definition


### **Projection name** (`projection_name`) <a name="projection-name"></a>
+ Is a drop down list of common projections used in BC for geographic data.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|Y**NEW**|

### **JSON Table Schema** (`json_table_schema`) <a name="json-table-schema"></a>
+

|**Resource Type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **ISO Topic Category** (`iso_topic_category`) <a name="iso-topic-category"></a>
+ [Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15). 
+ [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

### **Resource type** (`resource_type`) <a name="resource-type"></a>
+ Is the type of resource.
+ Being reviewed if useful.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Resource access method** (`resource_access_method`)  <a name="resource-access-method"></a>
+ Describes how the end-user can access the data.
+ Being reviewed if useful.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|Y|Y|Y|Y|

### **Preview information** (`preview_info`) **Secton**  <a name="preview-information"></a>
+ Automatically populated if public to build the Map Preview.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **Layer name** (`layer_name`): is the name of the BCGW object and is only different if the WMS uses a generalized dataset.
+ **Preview latitude** (`preview_latitude`): allows you to provide a map preview centroid latitude.
+ **Preview longitude** (`preview_longitude`): allows you to provide a map preview centroid longitude.
+ **Preview map aervice URL** (`preview_map_service_url`): allows you to provide an alias for the map service URL.
+ **Preview zoom level** (`preview_zoom_level`): allows you to provide an initial zoom level for the map preview.
+ **Image URL** (`preview_image_url`): shows a preview of the data as a static image.
+ **Link to iMap** (`link_to_imap`): shows an interactive preview of the data in iMapBC.

### **Geographic extent** (`geographic_extent`) **Secton**  <a name="geographic-extent"></a>
+ These are auto populated with the bounding box of the province.

|**Resource type**:|Application|Tabular/ Docment|Geographic|WebService/ API|
|:---|:---:|:---:|:---:|:---:|
|Available Field|N|N|Y|N|

+ **North** (`north_bound_latitude`): 60.0
+ **South** (`south_bound_latitude`): 48.0
+ **East** (`east_bound_longitude`): -113.5
+ **West** (`west_bound_longitude`):-139.5

----------------

Click **Save** when done

+ Additional resources can be added by repeating the process above or adding other resource types.

[RETURN TO TOP][1]

---------------

## DataBC Services naming and describing guidelines - DRAFT

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

|Catalogue Fields| Exportable|Not Exportable
|:---|:---|:---|
|Title |View or Export BC Geographic Warehouse details (custom download)|View BC Geographic Warehouse details (export not enabled)|
|URL| Leave blank |Leave blank
|Resource type|Geographic|Geographic|
|Resource description|The Distribution Service allows for data to be exportable in various file formats from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.|The Distribution Service has not been enabled for export this data from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.
|Supplemenental info|See the main dataset page for more information.|The Distribution Service has been disabled for the data from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.
|Supplemenental info|Click <b>Access/Download</b> in the toolbar to download this dataset. For more information on using the distribution order form see [How to download data using the Catalogue or iMapBC](https://bcgov.github.io/data-publication/pages/dps_data_distribution_w.html).|See the main dataset page for more information.|
|Resource storage format|multiple|Oracle/SDE|
|Resource storage location|BC Geographic Warehouse|BC Geographic Warehouse|
|Spatial datatype|SDO Geometry|SDO Geometry|
|Object name|SCHEMA.TABLE|SCHEMA.TABLE|
|Prokection name|EPSG_3005 - NAD83 BC Albers|EPSG_3005 - NAD83 BC Albers|
|Resource access method|Indirect|Indirect|

**Specific Field Requirements to Enable Export**
+ To enable the **Download/Access** button to pop-up the Persistent Order Widget (POW) the following must be populated:
    1. **Name:** "BC Geographic Warehouse Custom Download"
    2. **Resource Storage Location:** "BC Geographic Warehouse"
    3. **Object name:** e.g., _"WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP"_

+ **Object name**
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

#### Retired or Replaced Resources

|Catalogue Fields| Retired|Replaced|
|:---|:---|:---|
|Title |View Retired BC Geographic Warehouse details (export disabled)|View Replaced BC Geographic Warehouse details (export disabled)|
|URL| Leave blank |Leave blank|
|Type|Geographic|Geographic
|Resource Description|
|Supplemenental Info|See the main dataset page for more information.|See the main dataset page for more information.|
|Resource Storage Format|multiple|Oracle/SDE|
|Resource Storage Location|BC Geographic Warehouse|BC Geographic Warehouse|
|Spatial Datatype|SDO Geometry|SDO Geometry|
|Object Name|SCHEMA.TABLE|SCHEMA.TABLE|
|Prokection|EPSG_3005 - NAD83 BC Albers|EPSG_3005 - NAD83 BC Albers|
|Resource Access Method|Indirect|Indirect|

#### Generalized Resources

Generalized resources are now to be included as an additional resource on the non-generalized record.

|Catalogue Fields| Text Examples|
|:---|:---|:---|:---|:---|
|Title |View BC Geographic Warehouse details (export is not enabled)|
|Resource description|The Distribution Service has not been enabled to allow for data to be downloaded in various file formats from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data. See the main page for additional information.|
|Resource storage format| Oracle/SDE

#### Web Mapping Resources

|Catalogue Fields| WMS|WFS|Network Link KML |iMapBC|
|:---|:---|:---|:---|:---|
|Title |View WMS getCapabilities request details|View WFS getCapabilities request details|View Retired BC Geographic Warehouse details (export disabled)|View Replaced BC Geographic Warehouse details (export disabled)|
|URL| Leave blank for all of these
|Type|Webservice/API|
|Resource description|Web Mapping Service (WMS) allows for data to be fed out via a service from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.|
|Supplemenental info|Click <b>Access/Download</b> in the toolbar to see or copy the WMS call. For more information see [Web Mapping Services](https://www2.gov.bc.ca/gov/content?id=95D78D544B244F34B89223EF069DF74E).|
|Resource storage format|wms|wfs|kml|html or geojson
|Resource storage location|BC Geographic Warehouse|
|Spatial datatype|SDO Geometry|
|Object name|SCHEMA.TABLE
|Prokection name|ESPG_4326 - WSG84 World Geodedic System 1984|ESPG_4326 - WSG84 World Geodedic System 1984|ESPG_4326 - WSG84 World Geodedic System 1984|
|Resource access method|Service|Service|Service|Application|

### ArcGIS Online (AGO) Resources

|Catalogue Fields| Data|Web Maps|Web Apps|Tile Services|
|:---|:---|:---|:---|:---|
|Title |Data - Open item details ArcGIS Online (AGO)|Web map - Open item details ArcGIS Online (AGO)|Web app - Open item details ArcGIS Online (AGO)|Tile service - Open item details ArcGIS Online (AGO)|
|URL| Leave blank for all of these
|Type|Geographic|Application|Application|Service|
|Resource description|The Distribution Service allows for data to be downloaded in various file formats from the B.C. Geographic Warehouse (BCGW), a central government repository of spatial and non-spatial data.|
|Supplemenental info|Click <b>Access/Download</b> in the toolbar to download this dataset. For more information on using the distribution order form see [How to download data using the Catalogue or iMapBC](https://bcgov.github.io/data-publication/pages/dps_data_distribution_w.html).|
|Resource storage format|ArcGIS Rest|other|other|other
|Resource storage location|BC Geographic Warehouse or ESRI ARcGIS Online if hosted|
|Spatial datatype|SDO Geometry|
|Object name|SCHEMA.TABLE
|Prokection name|EPSG_3005 - NAD83 BC Albers or hosted is ESPG_3857|Not Applicable|Not Applicable|
|Resource access method|Direct|Application|Application|Direct|

## BC Data Catalogue Hosted Resources


[RETURN TO TOP][1]

---------------
## Additional resources
+ See the full list of value options for drop down fields, see the [BCDC Schema](https://catalogue.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#field-label-and-value-changes)

---------------

[RETURN TO TOP][1]

[1]: #resource-management-in-the-bc-data-catalogue-user-interface-ui

