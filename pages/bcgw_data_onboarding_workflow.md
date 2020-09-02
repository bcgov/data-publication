# DATA PUBLICATION WORKFLOW - BC GEOGRAPHICAL WAREHOUSE

This page describes the workflow for loading datasets into the BC Geographic Warehouse (BCGW).  

-----------------------
## Table of Contents
+ [**WHITEBOARDS AND METADATA CREATION**](#WHITEBOARDS-AND-METADATA-CREATION)
	+ [Discovery Whiteboard](#Discovery-Whiteboard)
	+ [Begin Metadata Record Creation in BC Data Catalogue](#Begin-Metadata-Record-Creation-in-BC-Data-Catalogue)
	+ [Technical Whiteboard](#Technical-Whiteboard)
+ [**DATA MODELLING**](#DATA-MODELLING)
	+ [Create, Review and Deliver Data Model](#Create-Review-and-Deliver-Data-Model)
	+ [Deploy and Approve Data Content in Delivery](#Deploy-and-Approve-Data-Content-in-Delivery)
+ [**DATA MIGRATION TO TEST AND PRODUCTION**](#DATA-MIGRATION-TO-TEST-AND-PRODUCTION)
	+ [Deploy and Approve Data Content in Test](#Deploy-and-Approve-Data-Content-in-Test)
	+ [Deploy and Approve Data Content in Production](#Deploy-and-Approve-Data-Content-in-Production)
+ [**METADATA PUBLICATION**](#METADATA-PUBLICATION)
+ [**VISUALIZATION**](#VISUALIZATION)
	+ [ArcGIS Layerfile](#ArcGIS-Layerfile)
	+ [WMS Presentation](#WMS-Presentation)
+ [**DISTRIBUTION CONFIGURATION**](#DISTRIBUTION-CONFIGURATION)
+ [**REPLICATION SERVICES**](#REPLICATION-SERVICES)
-----------------------

# Audience

This section is directed at those who will be publishing data to the BC Geographic Warehouse (BCGW), within the DataBC Program of the Digital Platforms and Data Division, OCIO Ministry of Citizens' Services. In addition, this document may be of interest to government _Business Analysts_, _Business Portfolio Managers_, and _Application Administrators_. 

For a description of the roles and responsibilities of the business functions defined in this section, please refer to [_Data Publication: Roles and Responsibilities_](roles_and_responsibilities.md#data-publication-roles-and-responsibilities).

# Purpose

This section describes in detail the process of publishing data to the BC Geographic Warehouse (BCGW).

---------------------------

## WHITEBOARDS AND METADATA CREATION

### Discovery Whiteboard

**Resources**

|Type|Resource|Attendance|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|**Required**|
|Business Area|Vendor/Developer|_Optional_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|_As Required_|
|DataBC|[DataBC Metadata Publication](mailto:datacat@gov.bc.ca)|_Optional_|

**Intent:**

+ _Data Suppliers_ to provide an overview of the data and their intent for access purposes via DataBC Services.

**Requirements**

+ Sample of the data or a presentation on it (can be hard copy maps or spreadsheets).

**Questions to be Asked:**

Please read [_QUESTIONS_](before_you_start.md#questions) section in the [_Before you Start_](before_you_start.md#before-you-start) document.


**Action Items from this Meeting:**

|Type/Resource|Action Items|
|:---|:---|
|_Business Area: BA/BPM_|If a database or web service, provide access to the source data|
| |> Set up proxies to operation databases (delivery/test/production)|
| |> Set up Web Service to pull data from and accounts|
|_DataBC: DA_|If a file, provide access to the BCGW Staging Area|
|_Business Area: Data Suppliers_|Provide copy of dataset to BCGW Staging Area|
| |Complete [_Dataset Logfile_](https://gogs.data.gov.bc.ca/datasets/templates/src/master/dataset_logfile) with assistance from ***DataBC DA*** and [_Data Delivery Standards - Data Delivery Checklist_](delivery_standards.md#data-delivery-checklist)|
| |Refer to [_Connecting to Gogs_](tips_and_tricks.md#connecting-to-gogs) for details|
| |Start working on the Open Government Licence - British Columbia assessment and checklist if applicable, using [_Open Data Assessment and Checklist (DOCX, 30 KB)_](https://www2.gov.bc.ca/assets/gov/data/open-data/open_data_assessment_and_checklist.docx)|
|_DataBC: DA_|Review if Data Suppliers intended on QAing the data in the BCGW directly, if they have accounts.|
|_Business Area: Data Suppliers_|Request access to the BCGW via the [_NRM Service Desk_](https://nrsservicedesk.gov.bc.ca/IM/scripts/LoginPage.asp)|

+ [_Dataset Logfile_](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/dataset_logfile/) is to capture the following information:

   + ***Business Details:*** Overarching Title, Description, Custodian, Business Area Contacts and IMB BA/BPM
   + ***Data Details:*** Dataset Title, Descriptions, Source, Feature Type and Count and who to create Metadata
   + ***Security Details:*** Database, Applications, iMapBC, Distribution, WMS, License Type, Replication Mechanism
   + ***Data Model Details:*** Object Name, Column Names, Column Definitions (data type, length) Short Names (for Distribution) and Column Definitions
   
**References:**

+ [_File Geodatabase (FGDB) Standards_](http://geobc.gov.bc.ca/common/specs/file_geodatabase_standards.pdf)
+ [_Dataset Logfile_](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/dataset_logfile)
   + Refer to [_Connecting to Gogs_](tips_and_tricks.md#connecting-to-gogs)

-----

### Begin Metadata Record Creation in BC Data Catalogue

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|cc'd on communication|
|Business Area|Vendor/Developer|_Not Required_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|_Assist_|
|DataBC|[DataBC Catalogue Services](mailto:DATACAT@gov.bc.ca)|**Required**|

**Required:**

+ Custodial Branch Name
+ Data Custodian (ED or Director level) approval of editors to be added
+ Editors (IDIRs) for who will be maintaining/creating metadata records on behalf of that Branch

**References:**

+ [_BC Data Catalogue_](https://catalogue.data.gov.bc.ca/)
+ [_Open Data Policy_](open_data.md#open-data)
+ [_Open Data Assessment and Checklist (DOCX, 30 KB)_](https://www2.gov.bc.ca/assets/gov/data/open-data/open_data_assessment_and_checklist.docx)

-----

### Technical Whiteboard

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|**Required**|
|Business Area|Vendor/Developer|_Optional_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|_Optional_|

**Intent:**

+ To discuss the technical details.

**Questions to be Asked:**

+ Specifics about data model based off Dataset Logfile and access to source data
+ Security model for Database, iMap, Distribution, WMS, Open Data
+ Replication mechanism and frequency

**Action Items from this Meeting:**

|Type/Resource|Action Item|
|:---|:---|
|_DataBC: DA_|Account Management may include:|
| |Gogs, BCGW (del/test/prod), Staging Area, Oracle Designer, BCGW Delivery passwords|
| |[_Data Delivery Standards - Data Delivery Loading Accounts_](delivery_standards.md#data-delivery-loading-accounts-created-and-verified)|
|_Multiple Resources:_|Security Configuration if Named User access may include:
|_DataBC:_|Database Roles, Proxy accounts, iMap Workspaces, Firewalls|
|_Business Area: IMB_|Database Roles, Proxy Accounts, Firewalls|
|_Business Area: Data Suppliers_|Provide IDIRs and/or BCeIDs of users and data managers|
|_DataBC: DA_|Finalize database object names|
|_Business Area: Data Suppliers/Vendor_|Complete [_Data Delivery Standards - Repository Container Checkout List_](delivery_standards.md#repository-container-checkout-list-completed)|

**References:**

+ [_Data Naming and Describing Standards_](naming_and_describing.md#naming-and-describing-standards)
+ [_Data Classification Hierarchy_](data_classification_hierarchy.md#data-classification-hierarchy)
+ [_Staging Area Standards_](staging_area_standards.md#staging-area-standards)

[RETURN TO TOP][1]
 
------------------------------------------------------------------------------

## DATA MODELLING

### Create, Review and Deliver Data Model

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|_Input_|
|Business Area|IMB: BA/BP|cc'd on communication|
|Business Area|Vendor/Developer|**Required**|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|_Not Required_|

**References:**

+ [_Data Naming and Describing Standards_](naming_and_describing.md#naming-and-describing-standards)
+ [_BC Geographic Warehouse Delivery Standards_](delivery_standards.md#bc-geographic-warehouse-delivery-standards)
+ [_Role Naming and Creation Standards_](role_naming_and_creation_standards.md#role-naming-and-creation-standards)
+ [_Spatial Data Object Creation and Deletion Guidelines_](data_guidance_and_best_practices.md#spatial-data-standards)
+ [_Using the DataBC FME Framework_](using_the_databc_fme_framework.md#using-the-databc-feature-manipulation-engine-fme-framework)
+ [_Database Connections_](tips_and_tricks.md#database-connections)

-----

### Deploy and Approve Data Content in Delivery

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|**Required**|
|Business Area|Vendor/Developer|**Required**|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|_Not Required_|

**Action Items**

|Type/Resource	|**Action Item**|
|:---|:---|
|_Business Area: Vendor_|Deploy Delivery kit to **BCGW Deliver**|
|_DataBC DA:_| Notify **Data Supplier(s)** if using DataBC's existing Vendor|
|_Business Area: Vendor_| Notify **Data Supplier(s)** if using their own vendors|
|_Business Area: Data Supplier(s)_|Review Data|


**References:**

+ [_Database Connections_](tips_and_tricks.md#database-connections)

[RETURN TO TOP][1]
 
------------------------------------------------------------------------------

## DATA MIGRATION TO TEST AND PRODUCTION

### Deploy and Approve Data Content in Test

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|**Required**|
|Business Area|Vendor/Developer|_Optional_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|DataBC Delivery Specialist|**Required**|

#### Migration Bookings

**Required for Action Items**

+ Data Supplier or BA/BPM to notify DataBC DAs via email that Delivery kit is ready to promote to **BCGW Test** and provide date and time for migration.
   + ***DataBC*** will book tentative migrations where there is a dependency on a source database migration and will only promote once the business area has informed us that their migration was successful.

**Action Items**

|Type/Resource|Action Item|
|:---|:---|
|_DataBC: DA_|Schedule Migration|
|_Business Area: Data Supplier or BA/BPM_|Provide the **OKAY** to migrate if there is a dependency on a operational migration|
|_DataBC: Delivery Specialist or DA_|Migrate Delivery kit|
|_Business Area: Data Supplier or BA/BPM_|Confirm content of the dataset(s) is correct|

**References:**

+ [_Database Connections_](tips_and_tricks.md#database-connections)

-----

### Deploy and Approve Data Content in Production

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|**Required**|
|Business Area|Vendor/Developer|_Optional_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|DataBC Delivery Specialist|**Required**|

-----

#### Migration Bookings

**Required for Action Items:**

+ Data Supplier or BA/BPM to notify DataBC DAs via email that Delivery kit is ready to promote to BCGW Prod and provide date and time for migration.
   + DataBC will book tentative migrations where there is a dependency on a source database migration and will only promote once the business area has informed us that their migration was successful.

**Action Items**

|Resource|Action Item|
|:---|:---|
|_DataBC: DA_| Schedule migration|
|_Business Area: Data Supplier or BA/BPM_ | Provide the **OKAY** to migrate if there is a dependency on a operational migration|
|_DataBC: Delivery Specialist or DA_| Migrate Delivery kit|
|_Business Area: Data Supplier or BA/BPM_| Confirm content of the dataset(s) is correct|
|_Data BC: DA_| Kick off all access pieces|

**References:**

+ [_Database Connections_](tips_and_tricks.md#database-connections)

[RETURN TO TOP][1]
 
------------------------------------------------------------------------------

## METADATA PUBLICATION

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|cc'd on communication|
|Business Area|Vendor/Developer|_Not Required_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|_Assist_|
|DataBC|[DataBC Catalogue Services](http://mailto:DATACAT@gov.bc.ca)|**Required**|

**Resources:**

+ [_BC Data Catalogue_](http://catalogue.data.gov.bc.ca/)

[RETURN TO TOP][1]
 
------------------------------------------------------------------------------

## VISUALIZATION

### ArcGIS Layerfile

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|**Required**|
|Business Area|IMB: BA/BP|cc'd on communication|
|Business Area|Vendor/Developer|_Not Required_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|_Not Required_|

**Required for Action Items:**

+ _Data Supplier_ or _Vendor_ to provide a ArcGIS Layerfile that meets standards.

**Action Items**

|Type/Resource|Action Item|
|:---|:---|
|_DataBC: DA_|Perform QA and provide feedback to ***Data Suppliers***|
| |Promote Layerfile/Presentation to iMap Test|
|_Business Area: Data Supplier_|Perform QA on presentation in iMap Test|
|_DataBC: DA_|Promote Layerfile/Presentation to iMap Prod|

**References:**

+ [_Layer Presentation Standards_](layer_file_presentation_standards.md#layer-presentation-standards)

-----

### WMS Presentation

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|_Optional_|
|Business Area|IMB: BA/BP|_Not Required_|
|Business Area|Vendor/Developer|_Not Required_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|DataBC Webmapping|**Required**|

**Required for Action Items:**

+ Data must be set to pubic viewable

**Action Items**

|Resource|Action Item|
|:---|:---|
|_DataBC: DA_| Configure WMS|
|_DataBC: Webmapping_| Promote to production|

[RETURN TO TOP][1]
 
------------------------------------------------------------------------------

## DISTRIBUTION CONFIGURATION

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|_Input_|
|Business Area|IMB: BA/BP|_Not Required_|
|Business Area|Vendor/Developer|_Not Required_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC Catalogue Services](mailto:Datacat@gov.bc.ca)|_Not Required_|

**Required for Action Items:**

+ Security model as indicated in the Data Suppliers in the Dataset Logfile
+ If Named User, then IDIRs and/or BCeIDs as provided by the DataData Suppliers
+ Column Short Names as provided by the Data Suppliers in the Dataset Logfile

**Action Items**

|**Resource**|**Action Item**|
|:---|:---|
|_DataBC: DA/Catalogue Services_| Publish distribution link in metadata|

[RETURN TO TOP][1]
 
------------------------------------------------------------------------------

## REPLICATION SERVICES

**Resources**

|Type|Resource|Action|
|:---|:---|:---:|
|Business Area|Data Suppliers|_Input_|
|Business Area|IMB: BA/BP|_Input_|
|Business Area|Vendor/Developer|_Not Required_|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required**|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|**Required**|

**Required for Action Items:**

+ for file based source data, usually ESRI File Geodatabase to be located in the BCGW Staging Area
+ for database source data	Proxy account and passwords for source Del/Test/Prod as provided by the  ***Business Area IMB*** 
+ SQL query for materialized view replication
+ FME Workspace (FMW) file	Provided by business area client (or client’s vendor)
+ [_Use the DataBC FME Framework_](using_the_databc_fme_framework.md#using-the-databc-feature-manipulation-engine-fme-framework)+ Replication frequency as identified by the ***Data Suppliers*** in the Dataset Logfile

**Action Items**

|Resource|Action Item|
|:---|:---|
|_DataBC: DA_|Perform QA on FMW scripts|
|_DataBC: ETL_| Schedules replication for FMW|

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > DATA PUBLICATION PROCESS][2]

-------------------------------------------------------

[1]: #data-publication-workflow---bc-geographical-warehouse
[2]: ../publishing-data-to-databc.md#data-publication-process

