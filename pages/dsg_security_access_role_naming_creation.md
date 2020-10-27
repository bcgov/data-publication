---
layout: default
title: Role Naming & Creation
nav_order: 272
parent: Security and Access
grand_parent: Data Standards and Guidelines
has_toc: false
---

# ROLE NAMING AND CREATION
This standard should be consistently applied across platforms, databases and users within DataBC.
The naming standard is based upon the Role Based Access Control (RBAC) security model and the IDIR naming standard.

-----------------------

# Purpose

The contents of this page is to provide the audience with the information required to:

+ request a new role, including the timeline for the fulfillment of the request
+ implementation of roles, including but not limited to the role types, naming requirements and access types
+ granting IDIR and proxies and proxies to roles

-----------------------

# Audience

The target audience for this page are editors who require access to database schemas and who manage roles/access to other tools, such as ArcMap, SQL Developer and Toad. 

-----------------------

## Table of Contents
+ [**ROLE CREATION REQUEST**](#role-creation-request)
	+ [Timelines](#timelines)
+ [**ROLE IMPLEMENTATION**](#role-implementation)
	+ [Role Types](#role-types)
	+ [Naming Role Requirements](#naming-role-requirements)
	+ [Role Configuration Rollup](#role-configuration-rollup)
	+ [Schema Short Name Prefix Table](#schema-short-name-prefix-table)
+ [**GRANTING IDIR AND PROXIES**](#granting-idir-and-proxies)
	+ [Granting Proxies to Roles](#granting-proxies-to-roles)

-----------------------

## ROLE CREATION REQUEST

Role creation requests are submitted to the [DataBC Data Architecture Services](mailto:DataBC.DA@gov.bc.ca) team. These requests primarily result from net new dataloads to the BCGW/DBC where named users security is required or for application access. Schema level roles will already exist unless a new schema is being created for an internal application.

All BCGW/DBC objects being modelled in the DataBC repository should indicate which role(s) it will be granted to. Therefore request for new roles should happen before the physically modelling is to be done.

### Timelines

Depending on existing requests and staff availability, new role requests may take up to 10 business days to be completed. If there is requirement to have it completed in less than 10 business days please contact the [DataBC Data Architecture Services](mailto:DataBC.DA@gov.bc.ca) team. 

[RETURN TO TOP][1] 

-----------------------------------------------------------

## ROLE IMPLEMENTATION

+ Roles are to be created and granted to the same objects in all del/test/prod environments. 
+ Roles are to be created by the DataBC DAs but if unavailable can be created by the DataBC DBAs.
+ Users are to be granted in the appropriate environments
   + Del/Test = data managers
   + Prod = data managers and users
 
### Role Types

There are 5 types of standardized roles for both BCGW and DBC Schemas:

+ All Schema Level Roles
+ Individual Schema Roles
+ Specified Named User Roles
+ External Application Access Roles
+ Internal Application Access Roles

### Naming Role Requirements

When naming roles, use the following requirements to name roles:

+ Use underscores in place of spaces.
+ Use only the characters A-Z, underscore( _ ), and 0-9.
+ Use only upper case.
+ Use a maximum of 30 characters, including underscores.
+ Use the following naming convention segments:

### Role Configuration Rollup

**SRM_WHSE_ALL_GOV**
+ **^** `SRM_WHSE_ALL_PUB`
   + **^**  `SRM_WHSE_%_BASE_PUB`
+ **^** `SRM_WHSE_%_USER_GOV`
+ **^** `SRM_REG_ALL_GOV`
   + **^** `SRM_REG_%_USER_GOV`
   + **^** `SRM_REG_ALL_PUB`
   + **^** `SRM_REG_%_BASE_PUB`

**SRM_WHSE_ALL_BCEID**
+ **^** `SRM_WHSE_ALL_BCEID`
   + **^** `SRM_WHSE_%_USER_BCEID`
+ **^** `SRM_REG_ALL_BCEID`
   + **^** `SRM_REG_%_BCEID`

#### All Schema Level Roles:

The following are the roles that are roll ups of each individual Schema Level roles.  This is the level in which users and proxies are granted if for either Pub, Gov or BCeID
`<SRM_WHSE_ALL>_<ACCESS TYPE>`

Examples:

|Security Description|Current Role Names|Future Role Names* |
| :---: | :--- | :---: |
|`Public`|`SRM_WHSE_ALL_PUB` <br> `includes SRM_REG_ALL_PUB`|`WHSE_ALL_PUB`|
|`IDIR`|`SRM_WHSE_ALL_GOV`<br> `includes SRM_REG_ALL_GOV`|`WHSE_ALL_GOV`|
|`IDIR and BCeID`|`SRM_WHSE_ALL_BCEID`<br> `includes SRM_REG_ALL_BCEID`|`WHSE_ALL_BCEID`|

+ Future All role names have not yet been updated to match current naming standards
+ These roles denote the security configuration required for application and services access
   + Public and BCeID users cannot access directly the BCGW

#### Schema Level Roles:

The following format is applied for any new WHSE/REGSchemas: `<SCHEMA>_<ACCESS TYPE>`

Examples:

|Security Description| BCGW Schema |Current Role Names|Future Role Names|
| :---:| :--- | :--- | :---: |
|`Public`|`WHSE_BASEMAPPING`|`SRM_WHSE_BASEMAPPING_BASE_PUB`|`WHSE_BM_PUB`|
|`IDIR`|`WHSE_BASEMAPPING`|`SRM_WHSE_BASEMAPPING_USER_GOV`|`WHSE_BM_GOV`|
|`IDIR and BCeID`|`WHSE_BASEMAPPING`|`SRM_WHSE_BASEMAPPING_USER_BCEID`|`WHSE_BM_BCEID`|
|`Public`|`REG_LAND_AND_NATURAL_RESOURCE`|`SRM_REG_LAND_NAT_RES_BASE_PUB`|`REG_LNR_PUB`|
|`IDIR`|`REG_LAND_AND_NATURAL_RESOURCE`|`SRM_REG_LAND_NAT_RES_USER_GOV`|`REG_LNR_GOV`|
|`IDIR and BCeID`|`REG_LAND_AND_NATURAL_RESOURCE`|`SRM_REG_LAND_NAT_RES_BCEID`|`REG_LNR_BCEID`|

+ New schema level role names have not yet been updated to match current naming standards
+ Not all BCeID roles have been created for all schemas
+ Users and Proxies should **not** be granted at this level

#### Specified Named User Roles:

The following format is applied as: `<SCHEMA>_<PREFIX>_<WHO>_<ACCESS TYPE>`

Examples:

|Security Description| BCGW Schemas |Example Role Names|
| :--- | :---: | :---: |
|`Named Users of the Emergency Response Team to have read permission to the granted Fresh Water Atlas objects in the WHSE_BASEMAPPING SCHEMA.`|`WHSE_BASEMAPPING`|`WHSE_BM_FWA_ERT_USER`||
|`Named Users of custodial data managers who need to see datasets that may only be for application access or used to build other datasets but these objects themselves are not to be used by general named users.`|`WHSE_ARCHAEOLOGY`|`WHSE_RAAD_MGR`|

#### External Application Access Roles:

The following format is applied as: `<SCHEMA>_<PREFIX>_<WHO>_SELECT`

Example:

|Security Description| DBC Schemas |Example Role Names|
| :--- | :---: | :---: |
|`for the application MIDA to have select rights for specific objects it can see in the warehouse.`|`WHSE_MINERAL_TENURE`|`WHSE_MT_MIDA_SELECT`|

#### Internal Application Access Roles: 

Two Roles are required for DataBC hosted applications and are to be used depending on the security required:

1. `<SCHEMA>_<PREFIX>_SELECT`
1. `<SCHEMA>_<PREFIX>_ADMIN`

Example:

|Security Description| DBC Schemas |Example Role Names|
| :--- | :---: | :---: |
|`for the application proxy requiring *select* access to it's own tables.`|`APP_ACDF`|`APP_ACDF_USER`|
|`for the application proxy requiring *R/W* access to it's own tables.`|`APP_ACDF`|`APP_ACDF_ADMIN`|

### Schema Short Name Prefix Table

| BCGW Schema |Schema Role Prefix|
| :--- | :---: |
|`WHSE_ADMIN_BOUNDARIES`|`WHSE_AB`|
|`WHSE_ARCHAEOLOGY`|`WHSE_ARCH`|
|`WHSE_BASEMAPPING`|`WHSE_BM`|
|`WHSE_CADASTRE`|`WHSE_CAD`|
|`WHSE_CORP`|`WHSE_CORP`|
|`WHSE_ENVIRONMENTAL_MONITORING`|`WHSE_EM`|
|`WHSE_ENVIRONMENT_ASSESSMENT`|`WHSE_EA`|
|`WHSE_ETL_ADMIN`|`WHSE_ETL`|
|`WHSE_FISH`|`WHSE_FISH`
|`WHSE_FOREST_TENURE`|`WHSE_FT`|
|`WHSE_FOREST_VEGETATION`|`WHSE_FV`|
|`WHSE_FOREST_VEGETATION_<YEAR>`|`WHSE_FV_<last two numbers of the year>`|
|`WHSE_HUMAN_CULTURAL_ECONOMIC`|`WHSE_HCE`|
|`WHSE_IMAGERY_AND_BASE_MAPS`|`WHSE_IBM`|
|`WHSE_LAND_AND_NATURAL_RESOURCE`|`WHSE_LNR`|
|`WHSE_LAND_USE_PLANNING`|`WHSE_LUP`|
|`WHSE_LEGAL_ADMIN_BOUNDARIES`|`WHSE_LAB`|
|`WHSE_MINERAL_TENURE`|`WHSE_MT`|
|`WHSE_PARKS`|`WHSE_PARK`|
|`WHSE_REFERENCE`|`WHSE_REF`|
|`WHSE_REG_COAST`|`WHSE_REGC`|
|`WHSE_REG_INTERIOR`|`WHSE_REGI`|
|`WHSE_SOILS`|`WHSE_SOIL`|
|`WHSE_TANTALIS`|`WHSE_TANT`|
|`WHSE_TERRESTRIAL_ECOLOGY`|`WHSE_TE`|
|`WHSE_WASTE`|`WHSE_WASTE`|
|`WHSE_WATER_MANAGEMENT`|`WHSE_WATM`|
|`WHSE_WILDLIFE_INVENTORY`|`WHSE_WLDI`|
|`WHSE_WILDLIFE_MANAGEMENT`|`WHSE_WLDM`|
|`REG_HUMAN_CULTURAL_ECONOMIC`|`REG_HCE`|
|`REG_IMAGERY_AND_BASE_MAPS`|`REG_IBM`|
|`REG_LAND_AND_NATURAL_RESOURCE`|`REG_LNR`|
|`REG_LEGAL_AND_ADMIN_BOUNDARIES`|`REG_LAB`|

[RETURN TO TOP][1] 

-----------------------------------------------------------

## GRANTING IDIR AND PROXIES

+ Grants to Users and Proxies should be done at the WHSE_ALL_GOV level and any Specified Named User roles.

+ For initial grants on new datasets loaded to the BCGW, business areas are responsible for providing a list of named users (IDIR) that require direct connect access via tools such as ArcMap, SQL Developer and Toad. 
+ This work will be done by the designated staff within the DataBC DAs.
+ For additional IDIR grants, the business area is required to contact the CSNR Service Desk.

### Granting Proxies to Roles

See [_Proxy Naming Standards_](dsg_security_access_proxy_creation.md)

[RETURN TO TOP][1]

[RETURN TO DATA PUBLICATION > DATA STANDARDS AND GUIDELINES > SECURITY AND ACCESS][2]

-------------------------------------------------------

[1]: #Role-Naming-and-Creation
[2]: ./dsg_security_access.md
