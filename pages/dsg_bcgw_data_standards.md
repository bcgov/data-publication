---
layout: default
title: Data Standards
nav_order: 421
parent: Publication Workflow - Vendors
grand_parent: BC Geographic Warehouse
has_toc: false
---

# DATA STANDARDS
_Formerly: Data Guidance and Best Practices_

Standards make it easier to create, share, and integrate data by making sure that there is a clear understanding of how the data are represented and that the data you receive are in a form that you expect.

This page presents general standards, guidelines and best practices when providing data, spatial or otherwise in:

+ the BC Geographic Warehouse (BCGW).
+ the BC Data Catalogue (BCDC).
+ the DataBC Data Modelling tool (currently Oracle Designer).

|**AUDIENCE**|  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Data Modellers* | *Developers* | *DataBC Data Modellers* | *DataBC Catalogue Team* |

## Table of Contents
+ [**DATA TYPE STANDARDS**](#data-type-standards)
+ [**SPATIAL DATA STANDARDS**](#spatial-data-standards)
	+ [Geometry Type and Content](#geometry-type-and-content)
	+ [Spatial Reference IDs (SRID)](#spatial-reference-ids-srid)
	+ [Registration](#registration)
	+ [Tables and Views Containing Spatial Column](#tables-and-views-containing-spatial-column)
	+ [Resolution and Tolerance](#resolution-and-tolerance)
	+ [Shape (Geometry) Column Name](#shape-geometry-column-name)
	+ [ObjectID Column Name](#objectid-column-name)
	+ [Supporting Columns and Triggers](#supporting-columns-and-triggers)
	+ [Column Order](#column-order)
+ [**USE OF DATABASE CONSTRAINTS**](#use-of-database-constraints)
+ [**ORDER OF COLUMNS IN TABLES AND VIEWS**](#order-of-columns-in-tables-and-views)
+ [**USE OF INDICATOR AND FLAG COLUMNS**](#use-of-indicator-and-flag-columns)
+ [**USE OF CODE TABLES**](#use-of-code-tables)
+ [**USE OF NULL VALUES**](#use-of-null-values)
+ [**REFERENCES**](#references)

-----------------------

## DATA TYPE STANDARDS

The following Oracle data types and their associated precision are supported for use in the BC Geographic Warehouse:

|Data Type|Use|Example Column|
|:---:|:---|:---|
|`BLOB`|Supported just for the SE_ANNO_CAD_DATA column. |SE_ANNO_CAD_DATA|
|`CHAR(n)`|Strings where the length is constant and can contain just single-byte characters or numeric digits.  |CENSUS_SUBDIVISION_ID|
|`DATE`|Dates and dates with time. For details on storing and displaying dates and times, see the [_Government of British Columbia IM/IT Date and Time Standard (PDF)_](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/date_and_time_standard.pdf). Time zones: Whenever possible, explain in the field description the time zone used for a date-time field.|WHEN_CREATED|
|`NUMBER(10)`|Integers that are no larger than one billion.|FISH_FPHO_SYSID| 
|`NUMBER(38)`|OBJECTID and integers that can be larger than one billion.|OBJECTID|
|`NUMBER(n,d)`|Non-integer (fractional) numbers. |FEATURE_AREA_SQM
|`SDO_GEOMETRY`|Spatial geometry |SHAPE, <br>GEOMETRY (deprecated)  See [_Shape (Geometry) Column Name_](#shape-geometry-column-name) below
|`VARCHAR2(n)` or `VARCHAR2(n BYTE)`|Variable length strings, or fixed-length strings that can contain multibyte characters. __n__ should be large enough to accommodate the maximum possible length of the value being modelled.|DESCRIPTION|
|`VARCHAR2(n CHAR)`|Variable length character strings, or fixed-length character strings that can contain multibyte characters. Can be used in cases where a length limit is known but where the string might contain multibyte characters. __n__ should be large enough to accommodate the maximum possible length of the value being modelled. |GENERAL_COMMENTS|

-----------------------------------------------------------

## SPATIAL DATA STANDARDS

This section describes the DataBC standards that apply when storing spatial data in the BC Geographic Warehouse.

### Geometry Type and Content

All spatial tables in the BC Geographic Warehouse will store geometry using the Oracle Spatial Data Option (SDO) `MDSYS.SDO_GEOMETRY` object type.

The following SDO_GTYPE values for SDO_GEOMETRY objects are supported:  

|SDO GTYPE Value|Corresponding ArcGIS Geometry Type|Description|
|:---:|:---:|:---|
|DL01 |POINT |Single point per feature|
|DL02 or DL06 |LINE |Two or more points connected into a line; possibly multiple lines per feature|
|DL03 or DL07 |POLYGON |Three or more points connected into a line; possibly multiple lines per feature|
|DL05 |MULTIPOINT |More than one disconnected point per feature|

All features in an Oracle table or view must have the same ArcGIS geometry type.

The maximum number of vertices in any SDO_GEOMETRY object is:

|Type of geometry|Maximum number of vertices|
|:---|:---:|
|Two dimensions (latitude/longitude or northing/easting (_Y/X_)) |524,288 |
|Three dimensions (_Y/X_ plus height or measure) |349,525 |
|Four dimensions (_Y/X_ plus height and measure) |262,144 |


### Spatial Reference IDs (SRID)

The following two [_EPSG_](https://www.epsg.org/) Spatial Reference ID (SRID) values are supported for spatial datasets stored in the BC Geographic Warehouse:

|SRID value|Description|Use|Link|
|:---:|:---|:---|:---|
|3005|NAD 83 / BC Albers|Datasets with coordinates falling into the following ranges (approximately the extents of BC) when projected to SRID 3005: <br> X (easting): 0 to 2,000,000 <br> Y (northing): 0 to 2,000,000|[_https://epsg.io/3005_](https://epsg.io/3005)|
|4326|WGS 84 - World Geodetic System 1984 (longitude/latitude)|Datasets that extend far beyond the borders of BC|[_https://epsg.io/4326_](https://epsg.io/4326)| 

**Note** that ArcGIS maintains its own set of SRID values, one for each distinct combination of the EPSG SRID, the number of dimensions, and the resolution and tolerance values. These values may change over time and **must not** be referenced directly.
 
### Registration

All tables and views containing a spatial column must be registered with the geodatabase.

### Tables and Views Containing Spatial Column

All tables and views containing a spatial column must have a corresponding entry in the owner schema's `USER_SDO_GEOM_METADATA` table.

**Note** that the process of registering a table or view with the geodatabase automatically creates a row for that table or view.  Similarly, dropping a table or view in ArcCatalog removes the row.

### Resolution and Tolerance

When registering a table or view with the geodatabase, the default [_XY Resolution_](https://desktop.arcgis.com/en/arcmap/latest/tools/environments/xy-resolution.htm) value (.0001) must be used.

When registering a table or view with the geodatabase, the default [_XY Tolerance_](https://desktop.arcgis.com/en/arcmap/latest/tools/environments/xy-tolerance.htm) value (.001) must be used.

### Shape (Geometry) Column Name

The standard column name for spatial geometry is `SHAPE`. Under some circumstances `GEOMETRY` can be used instead.

### ObjectID Column Name

The standard column for a spatial table or view's [_ObjectID column]_(https://desktop.arcgis.com/en/arcmap/latest/manage-data/using-sql-with-gdbs/object-id.htm) is `OBJECTID.`

### Supporting Columns and Triggers

In addition to `SHAPE` and `OBJECTID`, all spatial tables and views will have  additional columns as noted in the table below:

|COLUMN_NAME|Data Type/Precision|Use|
|:---|:---:|:---|
|FEATURE_LENGTH_M|NUMBER(19,4)|Contains the length in metres of a linear feature or the perimeter of a polygonal feature. Not used for POINT or MULTIPOINT datasets.|
|FEATURE_AREA_SQM|NUMBER(19,4)|Contains the area in square meters of a polygonal feature. Not used for LINE, POINT, or MULTIPOINT datasets.|
|SE_ANNO_CAD_DATA|BLOB|Reserved for storing complex curve parameters.  Note that storage of complex curve information is not supported in the BCGW; however, this column must still be present.|

`FEATURE_LENGTH_M` and `FEATURE_AREA_SQM` are populated by database triggers of the form

```SQL
CREATE OR REPLACE TRIGGER <schema_name>.<container_name>_<table_short_name>_IU_TRG" 
          BEFORE INSERT OR UPDATE ON <schema>.<table_name>
          REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW 
BEGIN 
    :new.FEATURE_LENGTH_M := sdo_geom.sdo_length(:new.<geometry_column_name>,.001); 
END; 
/
```

for line feature tables, and

```SQL
CREATE OR REPLACE TRIGGER <schema_name>.<container_name>_<table_short_name>_IU_TRG" 
          BEFORE INSERT OR UPDATE ON <schema>.<table_name>
          REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW 
BEGIN 
    :new.FEATURE_AREA_SQM := sdo_geom.sdo_area(:new.<geometry_column_name>,.001); 
    :new.FEATURE_LENGTH_M := sdo_geom.sdo_length(:new.<geometry_column_name>,.001); 
END; 
/
```
for polygonal feature tables.

See [_Naming and Describing Standards_](dsg_naming_describing.md) for definitions of _container_name_  and  _table_short_name_.

### Column Order

The following columns, if present, appear in the following order, as the last columns in the table or view.

|Column Name|
|:---|
|FEATURE_LENGTH_M|
|FEATURE_AREA_SQM|
|SHAPE|
|OBJECTID|
|SE_ANNO_CAD_DATA|

[RETURN TO TOP][1] 

------------------------------------------------------------------------------

## USE OF DATABASE CONSTRAINTS

In order to make regular data [_ETL_](glossary.md#etl) go smoothly and to avoid partially truncated tables we have to make the assumption that data integrity is guaranteed on the source system. Hence the only enabled database constraints should be the ones that are required for proper behaviour of the BC Geographic Warehouse access tools (e.g., iMapBC, ArcGIS Desktop, WMS, WFS, Data Download).

+ Every table and materialized view must have a primary key constraint guaranteeing uniqueness/not NULL-ness of the natural primary key (e.g., `MAP_TILE` in `WHSE_BASEMAPPING.BCGS_10K_GRID`) or the surrogate primary key (e.g., `NRC_RD1M_SYSID` in `WHSE_BASEMAPPING.NRC_ROADS_1M_SP`)
+ Every table and materialized view must have a NOT NULL constraint on the OBJECTID column.
+ Other constraints (FOREIGN KEY, CHECK, UNIQUE, NOT NULL) are encouraged as a way of documenting relationships and other properties, but if present they must be disabled. 

------------------------------------------------------------------------------

## ORDER OF COLUMNS IN TABLES AND VIEWS

+ All Spatial columns must be present as the last columns in the view, or materialized view, and appear in the [_order_](#column-order) shown above.
+ The primary key column must be the first column in the table.
+ If the natural key for a table or materialized view is composite, a single column surrogate primary key must be defined. 
   + It must be the first column in the table or materialized view.

------------------------------------------------------------------------------

## USE OF INDICATOR AND FLAG COLUMNS

An *indicator* field is a binary (boolean) field, usually indicating the presence or absence of some property. If a field is an indicator field, the field name must be suffixed by _IND. 

` <column_name>_IND`

The description will contain the values the indicator represents, as illustrated in the following example: 

**Example**: Indicates whether a boundary is of low confidence due to its BOUNDARY_MAP_SOURCE, i.e., Y (true), N (false).

Values of indicator columns should be consistent thought out a model.  For example, do not use 'T'/'F' for some columns and 'Y'/'N' for others.

------------------------------------------------------------------------------

## USE OF CODE TABLES

Code tables are recommended for columns whose values do not fully describe the data in an operational data model. Examples of this are where a column has a value of 23, or A, or Ts1 with no associated indication of what those codes mean.

If the codes themselves are names or abbreviations that are not abstract, then code tables are not needed. However, an example list providing the majority of the code values must be supplied within the column comment.

------------------------------------------------------------------------------

## USE OF NULL VALUES

It's not uncommon in some systems for **_data is missing_** or **_data is unknown_** situations to be coded with some dummy real value to flag that the actual data is missing, e.g., all 9s, -1, etc.  

This can lead to confusion.  In the BCGW these situations should be signified by leaving the values NULL. 

_NULL_ should be the value stored in database table fields in cases where the actual value is missing or unknown, since this is the interpretation followed by Oracle SQL:

1. Aggregate functions (e.g. MAX, MIN, COUNT) applied to an expression will ignore rows where the expression has a _NULL_ value
1. The only exceptions to above are _COUNT(*)_ and _GROUP BY_ 
   + _COUNT(*)_ includes all rows, regardless of whether they have nulls.
   + _GROUP BY_ will consider all the null values to be a single value, distinct from all the other values, and therefore be represented by exactly one line in the output of the GROUP BY.
1. Any arithmetic expression involving a _NULL_ evaluates to _NULL_ (e.g., 3+NULL = NULL)
1. Predicates involving _NULL_ evaluate to NULL (e.g., 3 > _NULL_ evaluates to _UNKNOWN_ (neither TRUE nor FALSE)

_NULL_ __should not__ be used as a value that represents not applicable.

If an application is presenting data in a read-only fashion, then it may replace NULLs with some indicator value (e.g., 999999, -1, N/A), as long as the interpretation of these values is shown to the user.

------------------------------------------------------------------------------

If you have questions about DataBC's Data Standards, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/14).

## REFERENCES

+ [_Geomatic Solutions_](https://epsg.org/home.html)
+ [_ArcGIS Desktop - ArcMap_](https://desktop.arcgis.com/en/arcmap/)

------------------------------------------------------------------------------

[RETURN TO TOP][1]

[1]: #data-standards
