---
layout: default
title: Publication Workflow
nav_order: 42
parent: BC Geographic Warehouse
grand_parent: Data Publication Services
has_children: true
has_toc: false
nav_exclude: true
---

# BC GEOGRAPHIC WAREHOUSE PUBLICATION WORKFLOW

When data is published to the BCGW, it must undergo a rigorous and standardized publication process to ensure adherance to government data standards for quality and consistency.  DataBC has well documented Data Standards and Guidelines that are followed throughout the process for data publication.  

The workflows described below will guide you through what your reponsibilities are as the client and how we work with you to load and publish your dataset in the BCGW.

This page is written in the context that you have reviewed the documentation as listed below.

|**AUDIENCE**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Portfolio Managers* | *Application Administrators* |

## Table of Contents
+ [**DOCUMENTATION REVIEW**](#documentation-review)
+ [**WORKFLOW - IS MY DATA READY FOR THE BCGW?**](#workflow---is-my-data-ready-for-the-bcgw)
+ [**BEFORE YOU START**](#before-you-start)
+ [**WHITEBOARD SESSIONS**](#whiteboard-sessions)
	+ [**Discovery Whiteboard**](#discovery-whiteboard)
+ [**DATASET LOGFILE**](#dataset-logfile)
	+ [WORKFLOW: DATASET LOGFILE](#workflow-dataset-logfile)
+ [**TECHNICAL WHITEBOARD**](#technical-whiteboard)
+ [**DATA MODELLING**](#data-modelling)
+ [**DEPLOY AND APPROVE CONTENT IN DELIVERY**](#deploy-and-approve-content-in-delivery)
+ [**DATA MIGRATION TO TEST**](#data-migration-to-test)
+ [**DISTRIBUTION CONFIGURATION**](#distribution-configuration)
+ [**REPLICATION SERVICES**](#replication-services)
+ [**LAYERFILE PRESENTATION**](#layerfile-presentation)
+ [**DATA MIGRATION TO PRODUCTION**](#data-migration-to-production)
+ [**FINAL REVIEW**](#final-review)

---------------------------

## DOCUMENTATION REVIEW

The first step in the process is to review the following documentation: 
+ [Data Governance](dg.md)
+ [Before You Start](dsg_before_you_start.md)
+ [BCGW Standards and Guidelines](dsg_bcgw.md) (all)
+ [BCDC Standards and Guidelines](dsg_bcdc.md) (all)
+ [Common Standards and Guidelines]
	+ [Naming and Describing](dsg_naming_describing.md)
	+ [Security and Access](dsg_security_access.md) (all)
	+ [Staging Area](dsg_staging_area.md)
+ [Open Data](open_data.md)

------------------------------

## WORKFLOW - IS MY DATA READY FOR THE BCGW?

A good starting point in the BCGW Data Publication Process is to complete the questions in the Before You Start documentation.  This will help you to answer questions about your data that will be discussed at the Whiteboard Session with DataBC.

### [BCGW Readiness Workflow](images/wf_BCGWReadiness.svg)

![BCGW Readiness Workflow](images/wf_BCGWReadiness.png)

------------------------------

## ABOUT BCGW DATA PUBLICATION 

### Start with the End in Mind

Familiarize yourself with the steps involved in publishing data to the BCGW as the effort required depends on the nature and complexity of your data set. The steps described here can be "right-sized" to fit your needs.

![Steps for placing data in the warehouse](images/Steps_for_placing_data_in_the_warehouse.JPG)

As a _Data Publisher_, it is worth remembering that the point of this process is to not just end up with your data in the BCGW, but that it is packaged and presented in a format that makes it easy for your clients to use it for planning, analysis and decision-making.

Thus, although the steps presented here are in a BCGW population sequence, in many ways it's better to think first about the final steps of the process (i.e., how will I present my data and what data products will I provide?), and then work backwards. This will then inform your security, metadata and other modelling requirements.

![Start with the end in mind](images/Start_with_the_end_in_mind.JPG)

### Create a Plan

#### Why is a Plan Required?

Depending on the size and complexity of your data, the steps required to prepare the data and make it accessible using the BCGW may take days or weeks, and will require participation of your staff. Therefore, the first step is to create a work plan and ensure you have the required time and resources.

#### Activities

+ Contact DataBC, who will help you get started and provide advice about resourcing. 
   + In particular, you will probably need a Business Analyst to facilitate the process.
+ Your Business Analyst will set up a whiteboard session that will be attended by you, technical staff, and any vendors who may be involved in developing and maintaining your operational system. 
   + The purpose of the whiteboard session will be to develop a plan that defines all the resource required, role and responsibilities, issue and timelines.
+ This plan must be approved by you before work proceeds.
+ Your Business Analyst will then implement and manage the plan to completion.
+ Based on need, a Stewardship agreement may be developed.
+ The process to establish the licensing requirements for the data is also initiated at this point using the Open Data Assessment Checklist.

### Create the Warehouse Data Model

#### Why is a Warehouse Data Model Required?

When your data is stored in the BCGW, it may have to be structured quite differently from how it's organized in your operational system. This is because it will be used for potentially different purposes, serving a different audience who will use the BCGW's tool set for browsing and accessing the data. Unless the data conforms to certain design constraints, the BCGW's tools and services won't work properly.

A _data model_ is a formal description of the structure of a data set - that is, the types of data, their properties and relationships. A data model has to be created to describe how your data will be stored in the BCGW.

The _data model_ itself will be accessible to BCGW users. This is because it's an important element of metadata (see Define a Metadata Profile) that can help users utilize the data in their own systems environments.

#### Activities

As _Data Manager_, you are responsible for having your data modelled according to DataBC's standards and stored in the DataBC modelling environment. This requires the following:

+ Create a logical data model that describes the structure of the data as it will be stored in the BCGW.
+ Once this has been reviewed and approved, the physical data model must be created.
+ Create and provide the resulting scripts that will be used to build the tables, layers and views in the warehouse.

### Define the Population Process

#### Why is the Population Process Required?

_Population_ refers to the process of retrieving data from the Data Custodian's source system, transforming it as required and storing in the BCGW.

A number of different methods already exist, so it's a matter of selecting the most appropriate one and then configuring it to the specific needs of your data. Although this is the responsibility of the business area (who must also provide the funding), DataBC is available to you for consultation and support.

#### Activities

+ Initiate and fund a small project to develop the transformation process that will move the operational data into the warehouse.
+ Test the transformation process with a sample set of data to confirm that the warehouse model is correct. 
   + This is an important task. If problems are encountered then the data model will have to be fixed.
+ The next step is to test the transformation process with a full set of data to confirm that the process itself works correctly. 
   + Again, if there are problems, then the data transformation process will have to be corrected.

So by now, we have the data correctly represented in the warehouse and the process in place for populating the data from the operational system. But the data is not yet ready for access by BCGW users.

### Define a Metadata Record

#### Why is a Metadata Record Required?

_Metadata_ is information that describe data. A metadata record is a collection of information that describes a wide variety of data characteristics, including such topics as geographic extent of the data, when the data was collected, who collected it, who owns it, its format, quality, version number, rights of use, how often it's updated, its intended usage, and so on.

Creating a metadata record is important for the following reasons:

+ It provides the context for the data and allows it to be described and managed in a consistent way, similar to other datasets.
+ It supports user self-service. Users can browse the metadata record to understand the purpose and characteristics of a data set and decide whether it is right for their needs.
+ It supports sustainment in that it embodies knowledge about the data that might otherwise remain with a particular person or program, and not be captured.

There are international standards for metadata that DataBC follows. This provides interoperability with other data service utilities, meaning that descriptions of your data can be widely published and accessed (assuming your security profile allows this).

Visit [DataBC](https://data.gov.bc.ca) for more information about the [BC Data Catalogue](https://catalogue.data.gov.bc.ca/), DataBC's metadata management tool.

#### Activities

+ You or your _Business Analyst_ will use DataBC's metadata management tool to enter the metadata that describes your data. 
   + You may need to get the necessary permissions set up with DataBC. 
   + DataBC may provide training on using its metadata management tool, if necessary.  
+ Your metadata record will then be reviewed and approved by DataBC.
   + As _Data Manager_, you will have authority to edit your metadata profile in order to keep it up to date.)

### Define A Security Profile

#### Why is a Security Profile Required?

A _security profile_ defines who may access your data and what they can use it for. The _security profile_ (which is part of the metadata) is very important because it ensures that user access is consistent with your policies for data security, confidentiality and appropriate use.

#### Activities

+ Define a _security profile_ by defining access rules and restrictions that cover browsing, viewing, ordering and downloading your data via the BCGW. This is done using the metadata management tool.
+ Work with DataBC staff to ensure that your _security profile_ is complete, addressing all of your data and all types of user access.
+ Create any required data use agreements. (Note that it is your responsibility to ensure compliance with Freedom of Information and Protection of Privacy policies.)

### Define A Presentation Profile

This step usually requires substantial input from the business area. You can expedite the process by identifying who will make decisions about presentation and then arranging one or two focused meetings to reach agreement.

#### Why is a Presentation Profile Required?

The _presentation profile_ is very important. Its purpose is to present data in a consistent manner that best supports users' needs for analysis and decision-making. In effect it represents a business view of the data from the users' perspective, rather than the operational view of the source system.

Ideally, the _presentation profile_ should make invisible the complexities and technicalities of the underlying physical data structures. Typically, it includes elements such as these:

+ user-friendly names for data layers, tables and columns, e.g.,
   + `VEG_VEGETATIVE_COVER_POLYGON` becomes Vegetative Land Cover,
   + `PRI_UTIL_LEVEL_CD` becomes Primary Utilization Code
+ translation of codes into understandable descriptions
   + e.g., `{1,2,3}` becomes `{high, medium, low}`
+ colours, symbols and fonts to distinguish different data types
   + e.g., blue for rivers
+ grouping of records according to logical category

#### Activities

+ DataBC will contact you to discuss how you want your data named and presented.
   + You may also provide an ArcGIS layer file. If you do this, DataBC will review and approve the file
   + Alternatively, you may ask DataBC to develop a layer file on your behalf. 
      + In this case, DataBC will develop a first version according to your instructions and then send to you for review and approval.
+ Once the layer file is defined, DataBC will translate it for use with in various warehouse access channels for use with web mapping tools such as iMapBC.
+ You will then be asked to review and approve the translation within a test environment.

For more information about the various tools available to view, analyze and connect to data, visit the [BC Government's Data page](https://www2.gov.bc.ca/gov/content/data).

### Define Downloadable Data Products

#### Why are Downloadable Data Products Required?

_Data products_ are predefined packages of data that BCGW users can browse and download via the BCGW's data catalogue.

_Data products_ are important because they specify how your data can be used to support analysis and decision-making. You can define them based on types of use of the data (for instance, it may help users if you apply some pre-processing to the data to save them having to do it), or based on how your data is capable of being accessed (e.g., your data model may not support fine-grained access to the data).

#### Activities

+ Through discussion with users, develop an understanding of how they would like data assembled or "pre-packaged".
+ Within the technical constraints of your data and the BCGW, define a set of data products. 
   + DataBC can help in defining the data products and translating the definitions into technical specifications.
+ It is important that you reflect the security requirements associated with data products explicitly in the security profile because this will govern who may access the data products.

Visit the DataBC site for more information about the downloading data via distribution services.

### Communicate

Continued engagement with your clients is important. This applies both at the levels of their business and their individual needs.

#### Why is Communication Required?

Once you have completed the steps described above, your data will be ready for use. You now need to let your user audience know that your data is available for access.

#### Activities

+ Decide on a communication strategy. 
   + Who do you have to reach? 
   + What are the messages that you want to convey? 
   + Users will want to know about the characteristics of the data and data products, what they can be used for, if there are restrictions on who may use them.
+ Launch the strategy. 
   + Initial promotion may involve several channels and extend over a period of months.
+ Sustain the strategy. 
   + Communication must continue throughout the lifetime of the data. 
   + You will need to continue to promote your data, to inform users of changes to the data, and to solicit their ideas and feedback.

### Maintain the Data

If there are data structure changes needed to your tables, layers or views in the warehouse, DataBC will work with you to modify the models and transformation process to ensure data continues to be provided as expected to BCGW users.

#### Why is Data Maintenance Required?

Once you have the data available for access via the BCGW, you must keep the pipeline flowing smoothly. You will enter into the maintenance phase, which involves less day-to-day effort, but is nevertheless important.

Over time the nature and application of a data holding may change. It's up to you as Data Manager to periodically update the models and profiles described above. You must also decide when obsolete data should be retired and removed from the BCGW.

#### Activities

+ Establish procedures for maintaining the data. These must address items such as:
   + who is responsible for day-to-day operations
   + how updates to the data are handled
   + how quality assurance is conducted (quality assurance is not DataBC's responsibility)
   + how changes to profiles and models are handled
   + how records management is done
+ Provide user support. 
   + This includes assigning resources to answer users' business-related questions and resolve issues (technical support will be handled through DataBC and Shared Services)

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
|||||Complete the [Dataset Logfile](#dataset-logfile) with assistance from ***DataBC DA*** and [_Data Delivery Standards - Data Delivery Checklist_](dsg_bcgw_data_delivery.md#data-delivery-checklist)|
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

The [Dataset Logfile](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/dataset_logfile/) is where you provide specific details about your dataset in order to capture the following information:

   + **Business Details:** Overarching Title, Description, Custodian, Business Area Contacts and IMB BA/BPM
   + **Data Details:** Dataset Title, Descriptions, Source, Feature Type and Count and who to create Metadata
   + **Security Details:** Database, Applications, iMapBC, Distribution, WMS, License Type, Replication Mechanism
   + **Data Model Details:** Object Name, Column Names, Column Definitions (data type, length) Short Names (for Distribution) and Column Definitions

_Note that that Dataset Logfile directory contains two TEMPLATE files, one for [GSR](faq.md#What-is-the-Geographic-Sites-Registry-GSR) dataloads and one for non-GSR dataloads._

### WORKFLOW: DATASET LOGFILE

### [Dataset Logfile Workflow](images/wf_DatsetLogfile.svg)

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
||||If not using vendor/developer: complete [_Data Delivery Standards - Repository Container Checkout List_](dsg_bcgw_data_delivery.md#repository-container-checkout-list-completed)|
|Business Area|IMB: BA/BP|**Required**|_if Named User access is required, security configuration for: Database Roles, Proxy Accounts, Firewalls_|
|Business Area|Vendor/Developer|_Optional_|If using vendor/developer: complete [_Data Delivery Standards - Repository Container Checkout List_](dsg_bcgw_data_delivery.md#repository-container-checkout-list-completed)|

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

### Deploy and Approve Data Content in Test

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
+ [_Use the DataBC FME Framework_](dps_bcgw_w_databc_fme.md)
+ Replication frequency as identified by the ***Data Suppliers*** in the Dataset Logfile

**Action Items**

|Resource|Action Item|
|:---|:---|
|_DataBC: DA_|Perform QA on FMW scripts|
|_DataBC: ETL_| Schedules replication for FMW|

[RETURN TO TOP][1]

-----------------------

## LAYERFILE PRESENTATION
Layerfile presentations for iMapBC and ArcGIS can be built at any time throughout the process, but must be configured for the data once it is deployed in PRODUCTION. 

-----------------------

## DATA MIGRATION TO PRODUCTION

Once the data has been successfully tested and approved in BCGW TEST, DataBC can then migrate the dataset(s) to PROD. During this time:
+ the client will test data for content and performance in end-user platforms and provide feedback to DataBC from testing
+ DataBC will test data for content and performance in standard desktop and web-based mapping platforms (ArcGIS, iMapBC) and provide feedback to the client from testing

### Deploy and Approve Data Content in Production

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

-----------------------

## FINAL REVIEW

Your dataset has been modelled and loaded into the BCGW in Production, your layerfile is presented in iMap and available in ArcGIS, you have a metadata record in the BC Data Catalogue where users can find detailed information and download your dataset, the data may be automatically getting updated on a nightly basis...now what?

Please review all the functions and access points that have been configured for your dataset.  Provide [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) with any feedback or issues you may come across, or even just let us know how excited you are to have your data published through the DataBC Program! 

-----------------------

[RETURN TO TOP][1]

[1]: #bc-geographic-warehouse-publication-workflow
