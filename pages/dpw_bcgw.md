---
layout: default
title: Data Publication Workflow - BCGW
nav_order: 30
parent: Data Publication Workflows
has_toc: false
---

# DATA PUBLICATION WORKFLOW - BC GEOGRAPHIC WAREHOUSE

## PURPOSE

This page describes the client workflow for loading datasets into the BC Geographic Warehouse (BCGW).

-----------------------

## AUDIENCE

The intended audiences for this page are:
+ clients that are publishing data to the BC Geographic Warehouse (BCGW)
+ _Business Analysts_
+ _Business Portfolio Managers_
+ _Application Administrators_

For a description of the roles and responsibilities of the business functions defined in this section, please refer to [_Data Publication: Roles and Responsibilities_](roles_and_responsibilities.md#data-publication-roles-and-responsibilities).

-----------------------

## INTRODUCTION

When data is published to the BCGW, it must undergo a rigorous and standardized publication process to ensure adherance to government data standards for quality and consistency.  DataBC has well documented Data Standards and Guidelines that are followed throughout the process for data publication.  The workflows described below will guide you through what your reponsibilities are as the client and how we work with you to publish your dataset in the BCGW.

This page is written in the context that you have reviewed the documentation as listed below.

-----------------------

## Table of Contents
+ [**WORKFLOW DIAGRAM**](#workflow-diagram)
+ [**DOCUMENTATION REVIEW**](#documentation-review)
+ [**WHITEBOARD SESSIONS**](#whiteboard-sessions)
	+ [Discovery Whiteboard](#discovery-whiteboard)
	+ [Dataset Logfile](#dataset-logfile)
	+ [Technical Whiteboard](#technical-whiteboard)
+ [**DATA MODELLING**](#data-modelling)
	+ [Deploy and Approve Data Content in Delivery](#deploy-and-approve-data-content-in-delivery)
+ [**DATA MIGRATION TO TEST**](#data-migration-to-test)
	+ [Deploy and Approve Data Content in Test](#deploy-and-approve-data-content-in-test)
+ [**DATA MIGRATION TO PRODUCTION**](#data-migration-to-production)
	+ [Deploy and Approve Data Content in Production](#deploy-and-approve-data-content-in-production)
+ [**DISTRIBUTION CONFIGURATION**](#distribution-configuration)
+ [**REPLICATION SERVICES**](#replication-services)

---------------------------
## DOCUMENTATION REVIEW

The first step in the process is to review the documentation in the following sections: 
+ [Data Governance](data_governance.md) (all)
+ [Standards and Guidelines](standards_and_guidelines.md) (all)
+ Data Publication Workflows
	+ [Before You Start](before_you_start.md)
	+ [Roles and Responsibilities](roles_and_responsibilities.md)
	+ [Delivery Standards](delivery_standards.md)
+ [Open Data](open_data.md)

------------------------------

## WORKFLOW - IS MY DATA READY FOR THE BCGW?

![BCGW Readiness Workflow](images/wf_BCGWReadiness.png)

------------------------------

## BEFORE YOU START

Complete the questions in the Before You Start documentation.  This will help you to answer questions about your data that will be discussed at the Whiteboard Session with DataBC.

------------------------------

## WHITEBOARD SESSIONS

Once you have completed the documentation review and questions, it's time to contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to schedule a Whiteboard Session.  This purpose of this session is to discuss your dataset, the questions you answered in Before You Start as well as provide you with some personal guidance on next steps for the process.  

*We will ask that you send us a sample of the data so we can provide constructive feedback in the session.*

### **Discovery Whiteboard**
  
**Resources**

Having the right people available for the session allows us to all move forward efficiently. Please ensure attendance for the following resources from your business area:

|Type|Resource|Attendance|Purpose|Action Items from Session|
|:---|:---|:---|:---|:--|
|Business Area|Data Suppliers|**Required**|Data overview|Provide copy of dataset to BCGW Staging Area|
|||||Complete the [Dataset Logfile](#dataset-logfile) with assistance from ***DataBC DA*** and [_Data Delivery Standards - Data Delivery Checklist_](delivery_standards.md#data-delivery-checklist)|
|||||Request access to the BCGW via the [_NRM Service Desk_](https://nrsservicedesk.gov.bc.ca/IM/scripts/LoginPage.asp)|
|||| |Start working on the [Open Data](open_data.md) requirements, if applicable|
|Business Area|IMB: BA/BP|**Required**|Access requirements|If a database or web service, provide access to the source data|
|||| |Set up proxies to operation databases (delivery/test/production)|
|||| |Set up Web Service to pull data from and accounts|
|Business Area|Vendor/Developer|_Optional_| _If using, please attend_

The following resources from DataBC will be in attendance:

|Type|Resource|Attendance|Action Items from Session|
|:---|:---|:---|:--|
|DataBC|[DataBC Data Admin](mailto:DataBC.DA@gov.bc.ca)|**Required**|If a file, provide access to the BCGW Staging Area|
||| |Review if Data Suppliers intended on QAing the data in the BCGW directly, if they have accounts.|
|DataBC|[DataBC ETL](mailto:DataBC.DA@gov.bc.ca)|_As Required_|
|DataBC|[DataBC Catalogue Admin](mailto:datacat@gov.bc.ca)|_Optional_|

-------------------------------

## DATASET LOGFILE

The [Dataset Logfile](images/Dataset_Log_v29_TEMPLATE.xlsx) is where you provide specific details about your dataset in order to capture the following information:

   + **Business Details:** Overarching Title, Description, Custodian, Business Area Contacts and IMB BA/BPM
   + **Data Details:** Dataset Title, Descriptions, Source, Feature Type and Count and who to create Metadata
   + **Security Details:** Database, Applications, iMapBC, Distribution, WMS, License Type, Replication Mechanism
   + **Data Model Details:** Object Name, Column Names, Column Definitions (data type, length) Short Names (for Distribution) and Column Definitions

### WORKFLOW: DATASET LOGFILE

![Dataset Logfile Workflow](images/wf_DatsetLogfile.png)
   
-------------------------------


## TECHNICAL WHITEBOARD
The purpose of the Technical Whiteboard Session is to discuss the technical details of your dataset after your Dataset Logfile has been completed.  During this session, we will discuss:
+ Specifics about data model based on Dataset Logfile and access to source data
+ Security model for Database, iMap, Distribution, WMS, Open Data
+ Replication mechanism and frequency

**Client resources for session:**

|Type|Resource|Attendance|Action Items from Session|
|:---|:---|:---|:--|
|Business Area|Data Suppliers|**Required**|Provide IDIRs and/or BCeIDs of users and data managers|
||||If not using vendor/developer: complete [_Data Delivery Standards - Repository Container Checkout List_](delivery_standards.md#repository-container-checkout-list-completed)|
|Business Area|IMB: BA/BP|**Required**|_if Named User access is required, security configuration for: Database Roles, Proxy Accounts, Firewalls_|
|Business Area|Vendor/Developer|_Optional_|If using vendor/developer: complete [_Data Delivery Standards - Repository Container Checkout List_](delivery_standards.md#repository-container-checkout-list-completed)|

-------------------------------

**DataBC Resources for session:**

|Type|Resource|Attendance|Action Items from Session|
|:---|:---|:---|:--
|DataBC|DataBC DA|**Required**|Account Management may include: Gogs, BCGW (del/test/prod), Staging Area, Oracle Designer, BCGW Delivery passwords|
||||Finalize database object names|
||||_if Named User access is required, security configuration for: Database Roles, Proxy accounts, iMap Workspaces, Firewalls_
|DataBC|DataBC ETL|_Optional_|

-------------------------------

## DATA MODELLING 

Clients will provide input to their vendor/developer so the data model can be created.  DataBC will then review the model (and provide feedback when required) prior to your vendor/developer delivering the final product.

**Resources for data modelling**

|Type|Resource|Responsibility 
|:---|:---|:---|
|Business Area|Data Suppliers|Input|
|Business Area|IMB: BA/BP|cc'd on communication|
|Business Area|Vendor/Developer|**Required** to complete Data Model|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required** to review Data Model|

-------------------------------

## DEPLOY AND APPROVE CONTENT IN DELIVERY
Once the data modelling is complete, the data will be then deployed to the BCGW Delivery environment via a Delivery Kit (completed by vendor/developer).

**Resources**

|Type|Resource|Action Items|
|:---|:---|:---|
|Business Area|Data Suppliers|**Required** to review data|
|||Create metadata record in BC Data Catalogue
|||_If data is spatial, create layerfile(s)_
|Business Area|IMB: BA/BP|**Required** to notify **Data Supplier(s)** if using their own vendors
|Business Area|Vendor/Developer|**Required** to deploy Delivery Kit to BCGW Delivery|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required** to notify **Data Supplier(s)** if using DataBC's existing Vendor|

[RETURN TO TOP][1]
 
-------------------------------

## DATA MIGRATION TO TEST

Once the data has been successfully deployed to BCGW Delivery, DataBC can then migrate the dataset(s) to TEST.  During this time:
+ the client will test data for content and performance in end-user platforms and provide feedback to DataBC from testing
+ DataBC will test data for content and performance in standard desktop and web-based mapping platforms (ArcGIS, iMapBC) and provide feedback to the client from testing

## Deploy and Approve Data Content in Test

#### Migration Bookings for TEST
+ ***DataBC*** will book tentative migrations where there is a dependency on a source database migration and will only promote once the business area has informed us that their migration was successful.


**Resources for Test Deployment**

|Type|Resource|Responsibility|Action Items|
|:---|:---|:---|:--|
|Business Area|Data Suppliers|**Required**|Coordinate with BA/BPM to notify [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) via email that Delivery kit is ready to promote to **BCGW Test** and provide date and time for migration
||||Coordinate with the BA/BPM to provide the **OKAY** to migrate if there is a dependency on a operational migration|
||||Data testing - content, performance|
|Business Area|IMB: BA/BPM|**Required**|Coordinate with Data Supplier to notify [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) via email that Delivery kit is ready to promote to **BCGW Test** and provide date and time for migration
||||Coordinate with the Data Supplier to provide the **OKAY** to migrate if there is a dependency on a operational migration|
||||Data testing - content, performance|
|Business Area|Vendor/Developer|_Optional_|
|DataBC|DataBC DA|**Required**|Schedule migration
||||Data testing - content, performance|
|DataBC|DataBC Delivery Specialist|**Required**|Migrate Delivery Kit|

-------------------------------
## DATA MIGRATION TO PRODUCTION
Once the data has been successfully tested and approved in BCGW TEST, DataBC can then migrate the dataset(s) to PROD. During this time:
+ the client will test data for content and performance in end-user platforms and provide feedback to DataBC from testing
+ DataBC will test data for content and performance in standard desktop and web-based mapping platforms (ArcGIS, iMapBC) and provide feedback to the client from testing

## Deploy and Approve Data Content in Production

#### Migration Bookings for PROD

***DataBC*** will book tentative migrations where there is a dependency on a source database migration and will only promote once the business area has informed us that their migration was successful.

**Resources for Production Deployment**

|Type|Resource|Responsibility|Action Items|
|:---|:---|:---|:---|
|Business Area|Data Suppliers|**Required**|Coordinate with BA/BPM to notify [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) via email that Delivery kit is ready to promote to **BCGW Prod** and provide date and time for migration
||||Coordinate with the BA/BPM to provide the **OKAY** to migrate if there is a dependency on a operational migration|
||||Data confirmation - content, performance|
|Business Area|IMB: BA/BP|**Required**|Coordinate with Data Supplier to notify [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) via email that Delivery kit is ready to promote to **BCGW Prod** and provide date and time for migration
||||Coordinate with the Data Supplier to provide the **OKAY** to migrate if there is a dependency on a operational migration|
||||Data confirmation - content, performance|
|Business Area|Vendor/Developer|_Optional_|
|DataBC|DataBC DA|**Required**|Schedule migration|
||||Cooridinate with DataBC Delivery Specialist to migrate Delivery kit|
|||| Kick off all access pieces|
||||Data confirmation - content, performance|
|DataBC|DataBC Delivery Specialist|**Required**|Cooridinate with DataBC DA to migrate Delivery kit|

[RETURN TO TOP][1]
 
-----------------------

## DISTRIBUTION CONFIGURATION

Data Distribution configuration is completed to implement access and security for datasets that are stored in the BCGW and available for download via:
	+ BC Data Catalogue
	+ iMapBC  

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
+ If Named User, then IDIRs and/or BCeIDs as provided by the Data Suppliers
+ Column Short Names as provided by the Data Suppliers in the Dataset Logfile

**Action Items**

|**Resource**|**Action Item**|
|:---|:---|
|_DataBC: DA/Catalogue Services_| Publish distribution link in metadata|

[RETURN TO TOP][1]
 
-----------------------

## REPLICATION SERVICES

Replication Services provides the channel in which the data is updated.  Some datasets require frequent, scheduled updates, while others may be updated less frequently or on an ad-hoc basis. DataBC DA's and [ETL](glossary.md#ETL) services will work with you to set up the replication process for your dataset.

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
+ for database source data	
	+ Proxy account and passwords for source Del/Test/Prod as provided by the  ***Business Area IMB*** 
+ SQL query for materialized view replication
+ FME Workspace (FMW) file
	+ Provided by business area client (or client’s vendor)
+ [_Use the DataBC FME Framework_](using_the_databc_fme_framework.md#using-the-databc-feature-manipulation-engine-fme-framework)
+ Replication frequency as identified by the ***Data Suppliers*** in the Dataset Logfile

**Action Items**

|Resource|Action Item|
|:---|:---|
|_DataBC: DA_|Perform QA on FMW scripts|
|_DataBC: ETL_| Schedules replication for FMW|

## FINAL REVIEW

Your dataset has been modelled and loaded into the BCGW in Production, your layerfile is presented in iMap and available in ArcGIS, you have a metadata record in the BC Data Catalogue where users can find detailed information and download your dataset, the data may be automatically getting updated on a nightly basis...now what?

Please review all the functions and access points that have been configured for your dataset.  Provide [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) with any feedback or issues you may come across, or even just let us know how excited you are to have your data published through the DataBC Program! 

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > DATA PUBLICATION PROCESS][2]

-------------------------------------------------------

[1]: #data-publication-workflow---bc-geographic-warehouse
[2]: ../index.md#data-publication-process
