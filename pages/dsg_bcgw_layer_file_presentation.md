---
layout: default
title: Layer File Presentation Standards
grand_parent: Web-based Mapping
parent: Presentation Workflow - Providers
nav_order: 821
has_toc: false
---

# LAYER FILE PRESENTATION STANDARDS

A layer file is an ESRI-based file with a .lyr extension that stores the path to a source dataset and other layer properties, including symbology. It provides a consistent presentation for data and is built using ESRI's ArcGIS software.

This page provides standards, guidelines and procedures for layer file presentations and the cartographic symbology of spatial data in the BC Geographic Warehouse (BCGW) as required for DataBC's mapping applications and services. 

Specifically, the layer files are directly or indirectly used as the source for presentations in the following mapping applications and services:

+ iMapBC
+ DataBC's IMF2 custom applications
+ Layer Library folder
+ TSAT Toolbar "Add Library Layers" tool (GTS ArcGIS Desktop ArcMap)
+ Web Mapping Service (WMS)
+ B.C.'s Map Hub layers available through ArcGIS Online

|**AUDIENCE**|
|:---:|
| *GIS Specialists* |

## Table of Contents
+ [**REQUIREMENTS**](#requirements)
+ [**NAMING STANDARDS**](#naming-standards)
	+ [Presentation Layer Naming](#presentation-layer-naming)
	+ [Group Layer Naming](#group-layer-naming)
	+ [Layer File Naming](#layer-file-naming)
+ [**LAYER PROPERTIES**](#layer-properties)
	+ [General Tab](#general-tab)
	+ [Source Tab](#source-tab)
	+ [Selection Tab](#selection-tab)
	+ [Display Tab](#display-tab)
	+ [Symbology Tab](#symbology-tab)
	+ [Fields Tab](#fields-tab)
	+ [Definition Query Tab](#definition-query-tab)
	+ [Labels Tab ](#labels-tab)
	+ [Joins and Relates tab](#joins-and-relates-tab)
+ [**LAYER CHANGE PROCEDURES**](#layer-change-procedures)
+ [**REFERENCES**](#references)

-----------------------

## REQUIREMENTS

Before a layer file can be created, the following must already exist:
+ The spatial dataset must already be modelled and published in the BC Geographic Warehouse (BCGW) database.
+ There must already be a BC Data Catalogue (BCDC) metadata record for the dataset.

Layer file and BCGW database credentials:
+ **IMPORTANT:** The layer file must not be created with embedded credentials to the BCGW database. 

Esri layer file version:
+ **Layer files must be Esri ArcGIS 10.6** and use the file extension ".lyr"

---------------------------------------------------------------------

## NAMING STANDARDS

+ The layer file must contain 1 and only 1 group layer.
+ The group layer must contain 1 or more presentation layers.
+ The presentation layers within the group layer should be closely related. 
   + If not, then consider creating more than one layer file.
+ All names must be Title Case.
+ All names, including symbolization categories, must be alphanumeric (A to Z, 0 to 9) and may include the short dash (-) and spaces.
   + Underscores are to be used in layer file names in place of spaces and dashes.
+ A short dash (-) should be used between parts of naming where appropriate to replace sentence structure such has "for the", "in", etc.

### Presentation Layer Naming
 
Each layer name may have several parts, separated by short dashes. 
The four most commonly-used layer name parts are Subject, Type, Status, and Feature Type. Here they are in the order they should appear in the name:

| | Subject | Type | Status | Feature Type |
|:---|:--|:---:|:---:|:---:|
| Example | Mountain Goat | Winter Range | Draft | Colour Filled |

There are many other layer name parts that could be used, both mandatory and optional. All are listed below in the order they should appear. 

1. Subject
   + The main descriptor to identify the layer being presented
   + e.g., Mountain Goat
   + **MANDATORY**
1. Type
   + A secondary descriptor to clarify the subject
   + e.g., Winter Range, Habitat Suitability
   + _OPTIONAL_, to be used to expand on the Subject as needed
1. Status
   + The state of the layer's information being presented
   + e.g., Proposed, Draft, Legally Established
   + _OPTIONAL_
1. Year
   + Year of data capture
   + e.g., 2005, 1997-2001
   + _OPTIONAL_, to be used when necessary to differentiate between layers with similar content but captured during different years
1. Spatial Extent
   + The geographic area that the layer represents
   _ Usually a standard abbreviation of the region, district, or other geographic unit
   + _OPTIONAL_, and only used when the layer does not represent all of BC
1. Scale
   + The scale of data capture or presentation
   + e.g., 10K, 250K, 1M
   + _OPTIONAL_, to be used when necessary to differentiate between layers with similar content but captured at different scales
1. Source
   + Agency or program which captured or manages the data
   + e.g., Tantalis, OGC, ABMS
   + _OPTIONAL_, to be used when necessary to differentiate between layers with similar content but captured by different agencies or programs
1. Feature Type
   + Used for geometry type (point, line, poly) or feature presentation differences (outlined vs. filled polygons) or use of "All" when there are other presentations with subset queries.
   + e.g., Outlined, Colour Filled, Colour Themed, Lines, Points, Labels, All
   + _OPTIONAL_, to be used when necessary to differentiate between layers with similar content but different geometries/presentations
1. Sensitivity
   + Indication that the layer contains sensitive data
   + i.e., Sensitive
   + **MANDATORY**, for a layer that contains sensitive data
1. Security
   + Indication of the level of security for a layer's visibility (when not public), such as internal to government users or restricted to a subset of named users
   + e.g., Internal (government/IDIR users), Industry (Business BCeID users), Restricted (named users)
   + **MANDATORY**, for a layer that contains non-public visible data
1. Imagery
   + Interim naming 'standard' for these layers. 
         + NOTE: Imagery is managed internally at DataBC.
   + "Ortho/Sat" "Location" "Airphoto/blank" "Colour/B&W" "Year" "Resolution"

NOTE: For **generalized datasets**:

+ the layer name must include "- Generalized" at the end; or
+ the scale is included in the name if individual layers have different scales of data presentation

**Example Layer Names**

+ Mountain Goat - Winter Range - Draft - Colour Filled
+ Mountain Goat - Winter Range - Proposed - Colour Filled
+ Land Title Districts - Tantalis - Outlined
+ Timber Licence - Active - FTEN - Outlined

### Group Layer Naming

+ A group layer name should have a simplified name that defines the scope of the presentation layers within.
+ The same standards for presentation layer naming also apply to group layer naming, with one exception:
   + abbreviations used in a presentation layer name should be spelled out in full in the group layer name. 
   + For example, "South Coast Region" would be used in the group layer name while "RSC" might be used in the presentation layer(s) within.

**Example Group Layer Names** (including presentation layer names within, optionally shortened with abbreviations when applicable)

+ Wildlife Species Inventory - Survey Observation Points
   + WSI - SO - Mammals
   + WSI - SO - Insects
   + etc...
+ Ungulate Winter Range - Proposed
   + Ungulate Winter Range - Proposed - Outlined
   + Ungulate Winter Range - Proposed - Colour Filled
+ Groundwater Wells
   + Groundwater Wells - All
   + Groundwater Wells - Class
   + etc...

### Layer File Naming

The layer file name must match the group layer name except that spaces and dashes are to be replaced with underscores. 

**Example Layer File Names**

+ Wildlife_Species_Inventory_Survey_Observation_Points.lyr
+ Ungulate_Winter_Range_Proposed.lyr
+ Groundwater_Wells.lyr

[RETURN TO TOP][1]

---------------------------------------------------------------------

## LAYER PROPERTIES

The following are descriptions, standards, and best practices for setting up layers in ArcMap.

### General Tab

In the General Tab, you can set the layer name, visibility, and scale range.

**Layer Visibility**

+ The group layer must be set to visible. 
+ A minimum of one presentation layer in the group layer must be set to visible.

**Layer visibility settings require discretion.**

+ The goal is to create a group layer which opens with a set of meaningful layers visible to provide orientation immediately, but without too much detail. For example, a group layer related to a planning process might have the plan boundary and one or two of the ‘most important’ planning themes set to visible. 
+ If a group layer contains themes of similar priority which do not conflict visually – e.g. topographic data split into roads, rivers, water bodies – it is more appropriate to set them all visible. For large datasets, it is recommended that no more than three layers in a group should be set visible (for draw time performance reasons).

**Scale Range (Scale Dependency)**

+ Group layers must not have scale range set (i.e., ensure "Show layer at all scales" is selected)
+ Presentation layers:
   + MANDATORY: All presentation layers must have a minimum scale (Don't show layer when zoomed: "Out beyond").
   + OPTIONAL: Some presentation layers may have a maximum scale (Don't show layer when zoomed: "In beyond").

A group layer with several presentation layers of similar content captured at different scales may be best displayed at different scales. In that case, set both the minimum scale and maximum scale for each of the presentation layers so that, as the user zooms in or out, the layers switch on and off harmoniously. 

**Scale Range Dependency on Display Speed**

Scale Ranges are used to control the draw time for layers (in both ArcMap and web mapping tools) to provide a good user experience. Layers that take too long to draw cause performance issues. 

+ A minimum scale MUST be set on every individual layer (and not at the layer group level)
+ Scales should be used that make sense for the density of the data. Example: 
   + Provincial boundaries are meant to be seen at the scale of the entire province 
   + Cadastral parcels have very dense linework and vertices and should be set to a minimum scale that is zoomed in very close
+ As a general rule, every presentation layer should display in 2 seconds at it's minimum scale in a web mapping application (such as iMapBC). 
+ The smallest scale which may be used for a minimum scale is 1:37,500,000.
+ Use only DataBC's permitted map scales so that they closely match iMapBC's standard map scales

##### Permitted Map Scales

The following standard ratios must be used for minimum and maximum scales: 

| **Current Layer Property Scales** | Pre-2018 Layer Property Scales | Corresponding iMapBC Scales |
|:---|:---|:---|
| 1:5,000 | | 1:1128.49722 |
| 1:5,000 | |1:2256.99444 |
|1:5,000 | | 1:4513.98888 |
|1:10,000 | ~~1:10,000~~ | 1:9027.977761 |
|1:20,000 | ~~1:20,000~~ | 1:18055.95552 |
|1:50,000 | ~~1:50,000~~ | 1:36111.91104 |
|1:75,000 | ~~1:100,000~~ | 1:72223.82209 |
|1:150,000 | ~~1:250,000~~ | 1:144447.6442 |
|1:300,000 | ~~1:500,000~~ | 1:288895.2884 |
|1:600,000 | ~~1:1,000,000~~ | 1:577790.5767 |
|1:1,200,000 | ~~1:2,000,000~~ | 1:1155581.153 |
|1:2,500,000 | ~~1:6,000,000~~ | 1:2311162.307 |
|1:5,000,000 | ~~1:6,000,000~~ | 1:4622324.614 |
|1:10,000,000 | ~~1:12,000,000~~ | 1:9244649.227 |
|1:20,000,000 | ~~1:35,000,000~~ | 1:18489298.45 |
|1:37,500,000 | | 1:36978596.91 |
| | | 1:73957193.82 |
| | | 1:147914387.6 |
| | | 1:295828775.3 |
| | | 1:591657550.5 |

+ Other values may only be used with permission

### Source Tab

Confirm the correct dataset and connection properties are being used.

+ Are the correct Connection Properties to the production BCGW instance being used?
   + ⚠ **IMPORTANT:** The BCGW database connection MUST NOT be configured with **embedded credentials**  
      + Do not create your layer file with BCGW data sourced using an .sde Database Connection file that has a user name and password saved
      + i.e., when you add your layer file to a new MXD you should always be asked for your BCGW username and password. 
      + _Embedded credentials are a potential security threat._ 
   + ⚠ **IMPORTANT:** The server instance MUST NOT include a **port number**
+ Is the correct BCGW dataset (Feature Class) being used?


### Selection Tab

This tab has no configuration but could be used to change the colours when a feature is selected.

### Display Tab

This tab is where to set transparency and the Display Field (Display Expression)

**Recommendations**:

+ **Transparent**: 20% - Especially for polygon features and thick lines.
+ **Display Expression**: choose the field that makes the most sense to be used as the header when a feature is identified.

**Not Recommended**:

+ Do not choose "Show Map Tips using the display expression"
   + This can have undesired results, and tax the system.
   + Enabling Map Tips by the end user is simple in both ArcMap and IMapBC, but must be under user control. 
   + An IMF application developer may also choose to enable Map Tips on a particular layer. 

### Symbology Tab

Symbology defines how geographic features are displayed

+ What line colour, thickness and pattern? 
+ Polygons: solid, hatched, outlined, colour filled, colour themed?
+ Which attribute is the theme based upon? 

**General Recommendations**:

+ Recommend choosing symbology from the ArcMap styles in 'Style References...' - > 'ESRI_Optimized'
+ Using Simple Marker/Line/Fill symbols is highly recommended - these can be more easily translated into all DataBC services
+ Using Picture Marker/Line/Fill symbols is not recommended - these symbols aren't always translated into all DataBC services (e.g., WMS) and so a simple default symbol will be automatically defined (in these cases the default colour or simple shape may not always be suitable)
+ Using multiple levels/layers in a particular symbology style is not recommended (e.g., thick line below a thinner line, or a hatched polygon fill over a solid polygon fill) - these symbols are usually not translated into iMapBC and other DataBC services. It is best to have only a single level for each symbol.
+ Use the standard category \<all other values\> when you anticipate that new values will be added to your dataset over time which won't be captured within your currently-defined categories.
+ Themes on fields that contain codes or cryptic text should have their Symbol Labels written out in plain text for general understanding. 

**General Requirements**:

+ Never remove a category from the list of themes - if you want to omit certain values/categories from being displayed, use a Definition Query to filter out those particular values.
+ Please note that special characters are not allowed in the the category names, so be careful when choosing a field to theme on that no values with special characters or NULLs are being used. 
+ Categories based on NULL values are not supported. For theming based on fields that contain some NULL values, use a Definition Query to remove NULL values. 
   + The Geoserver WMS service does not support categories based on NULL values. This will also improve performance in iMapBC.

**General Symbology Options supported**:

+ Features (Single symbol): supported
+ Theming on Categories -\> Unique values: supported
+ Theming on Categories -\> Unique values, many fields: supported
   + HOWEVER, **please note**: Along with the unique values many fields symbolization, there must be **an additional simple presentation layer** (e.g., categorization on one field or no categorization with only single symbol) of the entire spatial dataset (i.e., no filters or definitions queries) in the layer file. This presentation layer should be named with the term "- All" so that it can be defined as the default presentation in services/applications that cannot render the more complex presentation layer symbolized using unique values many fields.
+ Theming on Quantities: supported
+ Polygon Marker Fill Symbol or Marker Line Symbol is also permitted, but will probably have a slower draw time.

**Symbology Options NOT supported**:

+ Theming on Categories: using the Group Values option to combine 2 or more categories is **NOT SUPPORTED**. While the layer will present in iMapBC, any grouped symbologies will un-group and display multiple identical symbols.
+ Theming categories using Advanced -\> Symbol Levels is **NOT SUPPORTED**

#### Polygon Symbology

+ Polygon layers that have overlapping features require both an Outlined and either a Colour Filled, Colour Themed, or Hatched layer so that the overlapping areas are visible.
   + If polygons are not overlapping, a layer presentation **only requires one symbolization**.

**Polygons: Outlined**:

+ Use this terminology for a presentation layer when there are no Categories being themed on, and the polygons are not colour-filled.
+ Presentation layer name example: Water Management Districts - Outlined
+ Outline colours should be set to be colours that are visible against imagery. 
   + Recommend using bright colours since black and grey will be converted automatically for WMS and AGO to yellow.
+ Labels are recommended to be set on the Outlined layer only if using multiple presentations.

It may be tempting not to use the Outlined layer, since the user usually has control over symbology once the layer is loaded into a mapping application.  The outline, however, has a number of benefits, including: makes overlapping geometry apparent, and users are accustomed to seeing it.

**Polygons: Colour Filled**:

+ Use this terminology for a presentation layer when there are no Categories being themed on
+ Presentation layer name example: Water Management Districts - Colour Filled
+ No identified constraints at this time.

**Polygons: Colour Themed**:

+ Use this terminology for a presentation layer when there are categories being themed on and solid colours are used for the symbology (i.e., not hatched).
+ Presentation layer name example: Natural Resource Districts - Colour Themed

**Polygons: Hatched symbology**:

+ Cross-hatching is not supported. (Only hatching in one direction is supported.)
+ Only certain angles are to be used for hatching to draw correctly in web mapping platforms:
   + 0° (Horizontal)
   + 45° (forward diagonal)
   + 90° (Vertical)
   + 135° (backwards diagonal)
+ Presentation layer name example: Burn Severity Rating - All Years - Hatched

#### Line Symbology

+ No identified constraints at this time.

#### Point Symbology

+ No identified constraints at this time.

### Fields Tab

This tab will allow you to apply alias names to fields, set field visibility, change field order, or change the format of how field values are displayed.

**Field Visibility**:

+ You can choose not to show extraneous fields such as system fields or fields not needed for a certain presentation layer. Do this cautiously, as it is not always easy to predict who may want to see attributes for their purposes. 
+ Certain Fields should always have their visibility turned off:
   + SHAPE.AREA or GEOMETRY.AREA - these will only show 0.0 values, instead use the field FEATURE_AREA_SQM
   + SHAPE.LEN or GEOMETRY.LEN - these will only show 0.0 values, instead use the field FEATURE_LENGHT_M
   + SE\_ANNO\_CAD\_DATA - this is a system field required for ESRI products to read SDO Geometry datasets.

**Field Aliases**:

+ You must set all visible field names to Title Case with user-friendly names. 
+ Use full words (and spaces instead of underscores).

**Examples of Field Aliases**:

| Field Name | Field Alias |
|:---|:---|
| PARCEL_NAME | Parcel Name |
| PIN | Parcel Identification Number (PIN) |
| PID | Parcel Identifier (PID - Text) |
| PID_NUMBER | Parcel Identifier (PID - Number) |

**Commonly-Used Field Aliases**:

| Field Name | Field Alias |
|:---|:---|
| FEATURE_AREA_SQM | Feature Area Sqm |
| FEATURE_LENGHT_M | Feature Perimeter M or Feature Length M |

**Field Order**:

+ Field order should normally be set in the BCGW dataset during the data modelling and publishing phase, but in certain cases for certain layer presentations, you have the option to set the field order for the presentation layer.
+ Select the field to be moved and use the up and down arrows as needed.
+ Field orders can also get mixed up when BCGW dataset models change: it is recommended that when editing an existing layerfile to select the *Reset Field Order* option so that the fields again match the dataset field order.

**Changing the Number Format Display**:

+ You may also wish to change the way the values for numeric fields are displayed. For example, this can be effective in displaying a certain number of decimal places or adding the thousands comma separator. 
+ **NOTE**: **THIS DOES NOT TRANSLATE TO iMAP AND WEB MAPPING AT THIS TIME**

Example: **Square Meters to Hectares**: 

1. Select the Area field
1. Under *Appearance* -\> *Number Format* click on the box with the `...` 
1. Select *Rate*
1. Change the *Factor* to 10,000.

### Definition Query Tab

A definition query limits/filters the features from the data source, so that only some features are included in the layer.

**Performance**: 

+ Complex queries may cause performance issues, therefore formatting statements efficiently is important.
   + e.g., Using "in" statements instead of a series of "and" statements for a single column.
+ In general, especially for large datasets with many values in the field being queried on, an index should have been created on the particular field in the BCGW dataset. 
   + This will greatly increase the speed of the transaction.

**Not Recommended**:

+ Do not use double quotes around column names.
+ Do not use "NOT IN" statements.
+ The Geoserver WMS service currently does not support definition queries based on NULL values.

### Labels Tab 

Labels provide a quick view of a value of a feature with options for font, font size, colour, and label placement options. 

Labels turned on will allow labels to be easily toggled on or off in web mapping applications like iMapBC.

Multiple labels ("Define classes of features...") based on scales are supported, this can allow different labels to be displayed when zoomed to different scales. 

**Requirements**:

+ Scale Range must be set if labels are being used, and in that case a minimum scale is required.
+ Labels must follow the 2 second display rule with the minimum Scale set appropriately.
+ Label text should be similar to the colour of feature symbology.
+ Labels should not black as black is not visible against imagery.
+ Halos should be turned on and be set to 1 or 2 depending on the size and density of the labels.
+ Complex label expressions are **not** accepted, like VB or Python.
   + However, concatenation of fields is permitted.

### Joins and Relates tab

+ Layer joins and Query layers are not supported. 
+ Please contact DataBC to discuss modelling requirements and creating a view in the BCGW database.

---------------------------------------------------------------------

## LAYER CHANGE PROCEDURES

Over time, the presentation of a layer may require modification. 

+ All requests for modification must first start by contacting DataBC. 
+ A determination will be made on a case-by-case basis whether data custodian involvement is required. 
+ When modifications have been approved the requester can then create a local copy of the layer file from the Layer Library 
+ The new layer file can be e-mailed or deposited on an agreed upon shared drive
+ A DataBC representative will ensure the layer file meets standards, stability, and performance prior to updating the new layer file in the Layer Library, etc.

-------------------------------------------------------

## REFERENCES

+ [_ArcGIS Desktop - What is a layer?_](https://desktop.arcgis.com/en/arcmap/10.6/map/working-with-layers/what-is-a-layer-.htm)

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #layer-file-presentation
