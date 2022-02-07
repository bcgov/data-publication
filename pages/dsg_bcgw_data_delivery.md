---
layout: default
title: Data Delivery
nav_order: 421
grand_parent: BC Geographic Warehouse
parent: Publication Workflow - Vendors
has_toc: false
---

# DATA DELIVERY

This page outlines the data delivery standards and processes which must be followed when publishing new database objects, making changes to database objects, or updating data in the BC Geographic Warehouse.

|**AUDIENCE**|  |  |  |  |
|:---:|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Portfolio Managers* | *Application Administrators* | *Contractors* |

## Table of Contents
+ [**THE DELIVERY KIT**](#the-delivery-kit)
	+ [Structure and Location](#structure-and-location)
	+ [README file](#readme-file)
	+ [Scripts Directory](#scripts-directory)
	+ [DDL Directory](#ddl-directory)
	+ [Preparing the Delivery Kit DDL scripts](#preparing-the-delivery-kit-ddl-scripts)
	+ [Dataload Directory](#dataload-directory)
+ [**DATA DELIVERY PROCESS**](#data-delivery-process)
	+ [Validate the delivery kit in BCGW Delivery](#validate-the-delivery-kit-in-bcgw-delivery)
	+ [Submit the delivery kit](#submit-the-delivery-kit)
+ [**APPENDIX: Delivery Kit Templates in GOGS**](#appendix-delivery-kit-templates-in-gogs)
+ [**APPENDIX: Data Delivery - When working with a Vendor**](#appendix-data-delivery---when-working-with-a-vendor)
	+ [Accounts Required to Prepare and Load Data](#accounts-required-to-prepare-and-load-data)
	+ [Repository Container Checkout List Completed](#repository-container-checkout-list-completed)
	+ [Oracle Designer Repository Container Created if Necessary](#oracle-designer-repository-container-created-if-necessary)
+ [**APPENDIX: LIST OF SCHEMAS AND SCHEMA ROLES**](#appendix-list-of-schemas-and-schema-roles)
  
-----------------------

## THE DELIVERY KIT

A delivery kit is a set of files containing the source code to create, populate, apply security, configure spatial geometry, and instantiate reversion for the objects in the BC Geographic Warehouse, along with a readme file describing the content of the kit and steps to deploy.

_Note: If the delivery includes new database objects or makes changes to existing warehouse database objects, the Logical and Physical models must be reviewed and approved by DataBC prior to submitting the Delivery Kit._

### Structure and Location

All delivery kit source code is hosted in DataBC's [Gogs repository](https://gogs.data.gov.bc.ca/datasets).

The delivery kit structure and content will vary depending on the specifics of the delivery. The following is a generic example file and directory structure for a non-GSR (Geographic Sites Registry) delivery:

```
    https://gogs.data.gov.bc.ca/datasets/xyz_whse/src/branch/master/setup/<container_name>.<version#>.README
    https://gogs.data.gov.bc.ca/datasets/xyz_whse/src/branch/master/<schema_name>/ddl/
    https://gogs.data.gov.bc.ca/datasets/xyz_whse/src/branch/master/<schema_name>/scripts/
    https://gogs.data.gov.bc.ca/datasets/xyz_whse/src/branch/master/<schema_name>/dataload/
    https://gogs.data.gov.bc.ca/datasets/xyz_whse/src/branch/master/<schema_name>/revert_to_previous/
```
GSR delivery kits have a specific structure, since the master branch of the Gogs repository for GSR contains delivery kits for all of the GSR occupant types.The following is a generic example file ad directory structure for a GSR delivery:
```
    https://gogs.data.gov.bc.ca/datasets/gsr_whse/src/branch/master/setup/gsr_whse.N.N.N.README
    https://gogs.data.gov.bc.ca/datasets/gsr_whse/src/branch/master/WHSE_IMAGERY_AND_BASE_MAPS/n.n.n_<occupant type label>/dataload
    https://gogs.data.gov.bc.ca/datasets/gsr_whse/src/branch/master/WHSE_IMAGERY_AND_BASE_MAPS/n.n.n_<occupant type label>/ddl
    https://gogs.data.gov.bc.ca/datasets/gsr_whse/src/branch/master/WHSE_IMAGERY_AND_BASE_MAPS/n.n.n_<occupant type label>/scripts
    https://gogs.data.gov.bc.ca/datasets/gsr_whse/src/branch/master/WHSE_IMAGERY_AND_BASE_MAPS/n.n.n_<occupant type label>/revert_to_previous
```
The following is a specific example of the file structure of a Delivery Kit for a simple release:

```
    https://gogs.data.gov.bc.ca/datasets/emrg_whse/src/branch/master/setup/emrg_whse.1.2.0.readme    
    https://gogs.data.gov.bc.ca/datasets/emrg_whse/src/branch/master/WHSE_HUMAN_CULTURAL_ECONOMIC/dataload/
    https://gogs.data.gov.bc.ca/datasets/emrg_whse/src/branch/master/WHSE_HUMAN_CULTURAL_ECONOMIC/scripts/
    https://gogs.data.gov.bc.ca/datasets/emrg_whse/src/branch/master/WHSE_HUMAN_CULTURAL_ECONOMIC/ddl/
    https://gogs.data.gov.bc.ca/datasets/emrg_whse/src/branch/master/WHSE_HUMAN_CULTURAL_ECONOMIC/revert_to_previous/

```

Note that a delivery kit might pertain to multiple BCGW schemas:

```
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/setup/gba_whse.1.0.7.readme    
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_BASEMAPPING/dataload
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_BASEMAPPING/ddl
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_BASEMAPPING/scripts
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_BASEMAPPING/revert_to_previous
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_LEGAL_ADMIN_BOUNDARIES/dataload
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_LEGAL_ADMIN_BOUNDARIES/ddl
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_LEGAL_ADMIN_BOUNDARIES/scripts
    https://gogs.data.gov.bc.ca/datasets/gba_whse/src/branch/master/WHSE_LEGAL_ADMIN_BOUNDARIES/revert_to_previous

```

[RETURN TO TOP][1] 

-----------------------

### README file

The README file describes the contents of the Delivery Kit is required with every delivery.

Each README file must:

+ contain instructions for when to request execution of DataBC readme steps and from whom to request them. 
+ specify the version number of the DataBC container, which will likely be different from Ministry application release number (operational system source).
+ specify the order that scripts are to be run by the DataBC Delivery Specialist.
+ include instructions on how to rollback any changes caused by the delivery.

Note that database spatial objects are registered with the Geodatabase through ArcCatalog. For each database object to be registered, the README file should indicate:

+ the spatial data type: Point, Line, or Polygon (note that point features classes are not to be registered as multipart, unless they truly are multipoint (i.e., multiple locations per feature).
+ objectid column name (normally OBJECTID).
+ geometry column name (normally SHAPE, but might be GEOMETRY).
+ spatial reference id (normally 3005 (BC Albers), but datasets that cover much more than just BC should be registered with spatial reference is 4326 (Unprojected Longitude/Latitude in decimal degrees).
 
If the feature class being deployed to the BCGW obtains its data from an operational system administered by an "Information Management Branch" (IMB), an access account for DataBC must be in place prior deploying to Delivery. The process for requesting and creating such accounts lies with each IMB that operates the source application. Contact the business area's project lead for the data publication for more information.

-----------------------

### Scripts Directory

All SQL files or DOS batch files needed to perform the delivery should be stored in the scripts directory, with the exception of DDL files (to create/modify/delete/grant, etc. objects) and DML files needed as part of the data population.  

This directory should contain a script named **_container_name_compute_mdsys_extents.sql_** (e.g., gba_whse_compute_mdsys_extents.sql) to set the MDSYS.user_sdo_geom_metadata diminfo column for the objects loaded by the delivery kit. 

Special scripts for adding and removing MDSYS.user_sdo_geom_metadata rows should not be needed, as registering tables/views with the geodatabase and dropping tables/views using ArcCatalog will add and remove MDSYS records as appropriate. See [Data Standards](dsg_bcgw_data_standards.md#user_sdo_geom_metadata) for additonal details.  

-----------------------

### DDL Directory

The ddl should contain all sql files needed to create, modify, or grant access to the database objects that are part of the delivery.

There should be one file called '<container_name>.sql' that is responsible for calling all of the other files in the directory, if there are any. There will normally be other SQL files in the same directory.

### Preparing the Delivery Kit DDL scripts

There are two options to choose from when preparing the delivery kit DLL scripts.  

#### Option 1: Starting by Building a Physical Model

1. Using Oracle Designer, transform and export modelled spatial objects into the appropriate DDL files to be included in the delivery kit. Follow the standards defined in [Naming and Describing Standards](dsg_naming_describing.md) and [Data Standards](dsg_bcgw_data_standards.md). 

#### Option 2: Starting by Building Database Objects and Reverse-Engineering 

1. Using a filled-in Dataset Model, copy and paste the column definitions into a DDL-generation spreadsheet.  
1. Copy and clean up the content in the generated tabs into a single SQL file.  There should be one file per database table or view. Ensure that the DDL files include GRANT statements. Change any occurrences of SDO_GEOMETRY to NUMBER.  Run the SQL file(s) in BCGW DELIVERY to make sure there are no errors.  
1. Using Oracle Designer Design Editor, reverse-engineer the DDL files into the appropriate Designer container.  Reverse engineer tables before views.
1. If necessary, correct any definitions of constraints and triggers, column and table comments, etc.  Make sure that SHAPE and/or GEOMETRY column data types are changed back to SDO_GEOMETRY.
1. Generate DDL files as in Option 1.

__Note: all deletions of database objects must be done in ArcCatalog.__

-----------------------

### Dataload Directory

The dataload directory contains FME scripts that are used to do initial data population and are subsequently scheduled for on-going replication by DataBC.

All FMW's should be delivered as per the standards described in [Using the DataBC FME Framework](dpw_bcgw_w_databc_fme.md)

**Additional Notes:**

+ Please ensure the source data is in the correct location (i.e. the assigned directory on BCGW Staging or the BC Data Catalogue).
+ Within the FME script, be sure to set the ‘Target Warehouse Feature Class’ ‘Truncate Table First’ property to Yes
+ ‘Workspace Properties’ should contain the usual Header type information about your script
+ If reading from the staging area, refer to the "read-only" version (\\data.bcgov\data_staging_ro\BCGW)

See [_Data Replication_](dps_bcgw_data_replication.md) for addtional information on data replication.

-----------------------

#### Revert to Previous Directory

The revert to previous directory should contain all sql files needed to create, modify, or grant access to the database objects as they existed at the start of the delivery.

__Note: all deletions of database objects must be done in ArcCatalog.__

[RETURN TO TOP][1] 

-----------------------

## DATA DELIVERY PROCESS

The following process should be followed in order to ensure a smooth delivery.

### Validate the delivery kit in BCGW Delivery

It is the Vendor Delivery Personnel’s responsibility to test all components of the Delivery Kit to ensure they will deploy as expected when the migration to Test is undertaken by DataBC. The Delivery environment is set up as a sandbox for this reason. It is vitally important that the Vendor Delivery Personnel confirm all instructions in the readme file to ensure their accuracy and correctness.

It is expected that the Vendor Delivery Personnel will ensure that a method to rollback the release (Uninstall Instructions) is clearly documented as part of the Delivery Instructions (readme). The absence of these instructions might delay or cancel the deployment of the release.

Once all scripts have been successfully tested (including those associated with reverting to the previous version), the Vendor Delivery Personnel will submit the delivery it to DataBC for QA.

### Submit the delivery kit

Once all components of the Delivery Kit have been successfully tested and the files prepared and named appropriately, they must be transferred to DataBC. Transfer of the delivery kit to DataBC is done by submitting a GoGS pull request.  See [_GoGS Instructions for Vendors_](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/delivery_kit/Gogs_Instructions_For_Vendors.md) for more information.


[RETURN TO TOP][1]

----------------

## APPENDIX: Delivery Kit Templates in GOGS

[Delivery Kit Template](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/delivery_kit/xyz_whse)
[GSR Delivery Kit Template](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/delivery_kit/gsr_whse)

Refer to [_Connecting to Gogs_](tips_tricks.md#connecting-to-gogs) for details on how to log in to Gogs.    

----------------

## APPENDIX: Data Delivery - When working with a Vendor

### Accounts Required to Prepare and Load Data
In most cases, Vendors delivering data to the BCGW Delivery environment will already have necessary accounts in place. The following accounts are typically required:

1. **IDIR** – Required for accessing government infrastructure, Gogs to load the Delivery Kit, access standards, email, etc.
1. **VPN** – Required in order to complete the Logical and Physical data models in Oracle Designer - steps that must be complete prior to delivering.
1. **GTS** (GIS Terminal Server) – Access to ArcGIS, FME, and Oracle SQL Developer; access to BCGW Delivery (Read and Write), Test (Read only), and Production (Read only); access is also possible to DBC Delivery, Test, and Production (application instance for non-data system components). See [this link](https://nrm.sp.gov.bc.ca/sites/AGRI/gtsusersforum/_layouts/15/start.aspx#/GTS%20Best%20Practices/Forms/AllItems.aspx) (login required) for GTS Best Practices.
1. **BCGW** – An Oracle account is required in order to log in to BCGW Delivery, Test, or Production. Access can be request via the [NRS Service Desk](https://nrsservicedesk.gov.bc.ca).
1. **Modelling Repository** - Access to start modelling into DataBC's Repository to complete Logical and Physical data models. To request access, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3/create/13).
1. **Gogs Repository** – Each delivery requires that a Gogs repository to be in place. The vendor’s IDIR account is granted read / write permission on the directory. The Gogs repository is where the completed Delivery Kit is pulled for use by the DataBC Delivery Specialist to deploy in Test and Production.
1. **Schema Owner** – In order to deploy objects in Delivery, the Vendor must know the Schema Owner user name and password for the Delivery environment. Should the credentials be unknown, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/14) for access.

** Note:** If accounts are not in place, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3/create/13). Account creation can take two **(2)** work weeks.

### Repository Container Checkout List Completed

In order for a new data modelling exercise to commence, a container checkout request needs to be completed, addressing the questions below and submitted to the DataBC Data Architecture Services Team (some details will need to be provided by the _DataBC DA_):

1. Name of Repository Container needing work: XXX_WHSE
1. Patch number associated with Container work: X.X.X
1. Name of DataBC DA responsible for checking the Contractor work
1. Name of Contractor performing the work
1. A complete list of what and how each of the entities, including their fields, will be modified.
   + _Creation/Update_ of the following dataset(s) and _Access Config_:  
   
	|Table Name|WebMapping|Dist|Pop|Open Data|Metadata|
	|:---|:---:|:---:|:---:|:---:|:---:|
	|`table name`|`security`|`security`|`frequency`|`yes candidate no tbd`|`New or existing`|

   + _ADD_ Fields (used for small data model changes):
   + _REMOVE_ Fields(used for small data model changes):
   + _REPLACE_ Objects:
6. What is the [_Gogs Repository_](https://gogs.data.gov.bc.ca/datasets/placeholder)?
7. What is the associated JIRA DWACT number (DWACT-xxxx)? 

**Responsibility of**: Vendor delivery personnel

### Oracle Designer Repository Container Created if Necessary

If an existing container does not meet specific needs, a new one can be created. The example below illustrates what the DataBC Data Architecture Team expect in terms of definitions as part of the checkout approval process:

1. **Container name:** FNSOC\_WHSE
1. **Description:** The FNSOC\_WHSE store objects that relate to preliminary Strength of Claim (SOC) assessments undertaken by agencies in the natural resource sector; as required when discharging the Provinces duty to consult with first nations. The data requires named-user level security restrictions. This container holds spatial and attribute data definitions for a SOC Tracking polygon layer and it is anticipated to contain other point, line or polygon layers in the future, as the business area evolves. This data is published to the BCGW from an operational database edited by a web mapping application.
1. **Objectives:** The objective of this container is to store and publish preliminary SOC assessment data such as the location and results of site specific assessments or territorial worksheets. This data will allow cross-agency access to existing assessments to facilitate corporate consistency between authors. The data is highly sensitive and requires named-user level security restrictions.
1. **Summary:** This container holds all secured data models and data related to preliminary strength of claim (SOC) assessments. The data will ensure corporate access to information required to support assessment consistency when discharging the Provinces duty to consult with first nations.

**Responsibility of**: DataBC project lead spatial data administrator

----------------

## APPENDIX: LIST OF SCHEMAS AND SCHEMA ROLES

Database Schema | Schema Roles
--- | ---
REG_LEGAL_AND_ADMIN_BOUNDARIES | SRM_REG_LEG_ADM_BOUND_BASE_PUB<br />SRM_REG_LEG_ADM_BOUND_USER_GOV 
REG_IMAGERY_AND_BASE_MAPS | SRM_REG_IMG_BASE_MAPS_BASE_PUB<br />SRM_REG_IMG_BASE_MAPS_USER_GOV 
REG_HUMAN_CULTURAL_ECONOMIC | SRM_REG_HUMAN_CUL_ECO_BASE_PUB<br />SRM_REG_HUMAN_CUL_ECO_USER_GOV 
REG_LAND_AND_NATURAL_RESOURCE | SRM_REG_LAND_NAT_RES_BASE_PUB<br />SRM_REG_LAND_NAT_RES_USER_GOV 
WHSE_ADMIN_BOUNDARIES | SRM_WHSE_ADMIN_BOUND_BASE_PUB<br />SRM_WHSE_ADMIN_BOUND_USER_GOV 
WHSE_ARCHAEOLOGY | SRM_WHSE_ARCHAEOLOGY_ADMIN<br />SRM_WHSE_ARCHAEOLOGY_USER_GOV 
WHSE_BASEMAPPING | SRM_WHSE_BASEMAPPING_BASE_PUB<br />SRM_WHSE_BASEMAPPING_USER_GOV 
WHSE_CADASTRE | SRM_WHSE_CADASTRE_BASE_PUB<br />SRM_WHSE_CADASTRE_USER_GOV 
WHSE_ENVIRONMENT_ASSESSMENT | SRM_WHSE_ENV_ASSESS_BASE_PUB<br />SRM_WHSE_ENV_ASSESS_USER_GOV 
WHSE_ENVIRONMENTAL_MONITORING |  SRM_WHSE_ENVIRON_MON_BASE_PUB<br />SRM_WHSE_ENVIRON_MON_USER_GOV 
WHSE_FISH | SRM_WHSE_FISH_BASE_PUB<br />SRM_WHSE_FISH_USER_GOV 
WHSE_FOREST_TENURE | SRM_WHSE_FOREST_TEN_BASE_PUB<br />SRM_WHSE_FOREST_TEN_USER_GOV 
WHSE_FOREST_VEGETATION |  SRM_WHSE_FOREST_VEG_BASE_PUB<br />SRM_WHSE_FOREST_VEG_USER_GOV 
WHSE_HUMAN_CULTURAL_ECONOMIC | SRM_WHSE_HUMN_CUL_ECO_BASE_PUB<br />SRM_WHSE_HUMN_CUL_ECO_USER_GOV 
WHSE_IMAGERY_AND_BASE_MAPS | SRM_WHSE_IMG_BM_BASE_PUB<br />SRM_WHSE_IMG_BM_USER_GOV 
WHSE_LAND_AND_NATURAL_RESOURCE | SRM_WHSE_LND_NAT_RES_BASE_PUB<br />SRM_WHSE_LND_NAT_RES_USER_GOV 
WHSE_LAND_USE_PLANNING | SRM_WHSE_LAND_USE_PLN_BASE_PUB<br />SRM_WHSE_LAND_USE_PLN_USER_GOV 
WHSE_LEGAL_ADMIN_BOUNDARIES |  SRM_WHSE_LGL_ADM_BND_BASE_PUB<br />SRM_WHSE_LGL_ADM_BND_USER_GOV 
WHSE_MINERAL_TENURE | SRM_WHSE_MINERAL_TEN_BASE_PUB<br />SRM_WHSE_MINERAL_TEN_USER_GOV 
WHSE_PARKS | SRM_WHSE_PARKS_BASE_PUB<br />SRM_WHSE_PARKS_USER_GOV 
WHSE_REFERENCE |  SRM_WHSE_REFERENCE_BASE_PUB<br />SRM_WHSE_REFERENCE_USER_GOV 
WHSE_REG_COAST |  SRM_WHSE_REG_COAST_BASE_PUB<br />SRM_WHSE_REG_COAST_USER_GOV 
WHSE_REG_INTERIOR |  SRM_WHSE_REG_INTERIOR_BASE_PUB<br />SRM_WHSE_REG_INTERIOR_USER_GOV 
WHSE_TANTALIS | SRM_WHSE_TANTALIS_BASE_PUB<br />SRM_WHSE_TANTALIS_USER_GOV 
WHSE_TERRESTRIAL_ECOLOGY |  SRM_WHSE_TERREST_ECO_BASE_PUB<br />SRM_WHSE_TERREST_ECO_USER_GOV 
WHSE_WASTE | SRM_WHSE_WASTE_BASE_PUB<br />SRM_WHSE_WASTE_USER_GOV 
WHSE_WATER_MANAGEMENT | SRM_WHSE_WATER_MGMT_BASE_PUB<br />SRM_WHSE_WATER_MGMT_USER_GOV 
WHSE_WILDLIFE_INVENTORY | SRM_WHSE_WILDLIFE_INV_BASE_PUB<br />SRM_WHSE_WILDLIFE_INV_USER_GOV 
WHSE_WILDLIFE_MANAGEMENT |  SRM_WHSE_WILD_MGMT_BASE_PUB<br />SRM_WHSE_WILD_MGMT_USER_GOV 

----------------

[RETURN TO TOP][1]

[1]: #data-delivery
