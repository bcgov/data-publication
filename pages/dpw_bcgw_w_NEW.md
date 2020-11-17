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

---------------------------

## DOCUMENTATION REVIEW

The first step in the process is to review the following documentation: 
+ [Before You Start](dsg_before_you_start.md)
+ [BCDC Standards and Guidelines](dsg_bcdc.md) (all)
+ [BCGW Standards and Guidelines](dsg_bcgw.md) (all)
+ [Common Data Standards and Guidelines](dsg.md) (all)
+ [Data Governance](dg.md)
+ [Open Data](open_data.md)

------------------------------

## DATA PREPARATION

The effort required to publish data to the BCGW depends on the nature and complexity of your data set. As a _Data Publisher_, you will need to keep in mind that this process is to not just end up with your data in the BCGW, but that it is packaged and presented in a format that makes it easy for your clients to use it for planning, analysis and decision-making.

Though the steps described in this page represent the complete BCGW population sequence, the process will be "right-sized" to fit your needs. To determine which steps are required for your dataset, we recommend thinking first about the final steps of the process (i.e., how will I present my data and what data products will I provide?), and then working backwards. This can help you define the security, metadata and other modelling requirements.

![Steps for placing data in the warehouse](images/Steps_for_placing_data_in_the_warehouse.JPG)

## Create a Plan

Depending on the size and complexity of your data, the steps required to prepare the data and make it accessible using the BCGW may take days or weeks, and will require participation from your staff throughout the process. To better understand the process and specific requirements, start first with reviewing the BCGW Readiness Worflow and the answering the questions in Before You Start. Then, you can create a work plan to ensure you have the required time and resources. 

1. [BCGW Readiness Workflow](images/wf_BCGWReadiness.svg)

![BCGW Readiness Workflow](images/wf_BCGWReadiness.png)

2. [Before You Start](#documentation-review)

3. Create a work plan **### WHAT ARE WE ASKING THEM TO HAVE IN THEIR WORK PLAN?**
+ Contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to get started and provide advice about resourcing. 
+ Identify your Business Analyst (or person desginated to act in this role) from your team that will facilitate the process.
+ Your Business Analyst will set up a whiteboard session that will be attended by you, technical staff, and any vendors who may be involved in developing and maintaining your operational system. 

## Whiteboard Sessions

Once you have completed the documentation review and questions, it's time to contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to schedule the first of two Whiteboard Sessions - the Discovery Whiteboard. The Technical Whiteboard is the other Whiteboard Session and will be completed during the Data Modelling process.

### **Discovery Whiteboard**

This purpose of this session is to discuss your dataset, the questions you answered in Before You Start, develop a plan that defines all the resource required, role and responsibilities, issue and timelines as well as provide you with some personal guidance on next steps for the process.

+ This plan must be approved by you before work proceeds.
+ Your Business Analyst will then implement and manage the plan to completion.
+ Based on need, a Stewardship agreement may be developed.
+ The process to establish the licensing requirements for the data is also initiated at this point using the Open Data Assessment Checklist.

*We will ask that you send us a sample of the data so we can provide constructive feedback in the session.*

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

## DATA MODELLING

### Create the Warehouse Data Model

When your data is stored in the BCGW, it may have to be structured differently from how it is organized in your operational system. This is because it may be used for different purposes or may be serving a different audience that uses DataBC's applications and infrastructure for browsing and accessing the data. 

Your data, as described in your [_Data Model_](glossary.md#data-model), is also required to conform to the [BCGW Standards and Guidelines](dsg_bcgw.md). The [_Data Manager_](glossary.md#data-manager) is responsible for ensuring the data is modelled as per these standards and guidelines. The [Dataset Logfile](glossary.md#dataset-logfile) (also referred to as the [_Logical Data Model_](glossary.md#logical-data-model) is used to complete this. It is common for programs that do not have internal resources for data modelling to have this work carried out by an external vendor/developer. In this case, you will provide input to the vendor/developer so the data model can be created.

### Dataset Logfile

The [Dataset Logfile](https://gogs.data.gov.bc.ca/datasets/templates/src/branch/master/dataset_logfile/) is where you provide specific details about your dataset in order to capture the following information:

   + **Business Details:** Overarching Title, Description, Custodian, Business Area Contacts and IMB BA/BPM
   + **Data Details:** Dataset Title, Descriptions, Source, Feature Type and Count and who to create Metadata
   + **Security Details:** Database, Applications, iMapBC, Distribution, WMS, License Type, Replication Mechanism
   + **Data Model Details:** Object Name, Column Names, Column Definitions (data type, length) Short Names (for Distribution) and Column Definitions
   
_Note that the Dataset Logfile directory contains two TEMPLATE files, one for [GSR](faq.md#What-is-the-Geographic-Sites-Registry-GSR) dataloads and one for non-GSR dataloads._

[Dataset Logfile Workflow](images/wf_DatsetLogfile.svg)

![Dataset Logfile Workflow](images/wf_DatsetLogfile.png)

DataBC will then review the model (and provide feedback when required).  Once the Dataset Logfile has been reviewed and approved, the Data Modelling vendor will populate specific scripts used to build the tables, layers and views in the warehouse, known as the [Delivery Kit](glossary.md#delivery-kit). 

**Resources for data modelling**

|Type|Resource|Responsibility 
|:---|:---|:---|
|Business Area|Data Suppliers|Input|
|Business Area|IMB: BA/BP|cc'd on communication|
|Business Area|Vendor/Developer|**Required** to complete Data Model|
|DataBC|[DataBC DAs](mailto:DataBC.DA@gov.bc.ca)|**Required** to review Data Model|
   
-------------------------------

## Depending on the complexity of your dataset, you may be required to create logical and/or physical data amodels.
we will work with client and/or vendor to IMB to leverage existing source models during this process. we can accept ddl, erd, etc.

Logfile - conceptual (could be other formats)

Logical review - designer
Physical review - designer
approved, next

### Define the Population Process - IS THIS STEP CURRENT/CORRECT? WE NEED TO UPDATE THIS SECTION - IS THIS NOT OUR ETL PROCESS?


non-spatial oracle to oracle are accepted as MVW
spatial is FME only
_Note: SDR is being deprecated._

A number of different methods can be used for [_Population_](glossary.md#population). It is the responsibility of the business area (who must also provide the funding) to select the most appropriate method and then configure it to the specific needs of your data. The DataBC team can be available to you for consultation and support, if required.

Population Methods:
1. FME

! required to review the data to ensure the transformation is correct - source field mapped to destination field correctly.

#### Activities

+ Initiate and fund a small project to develop the transformation process that will move the operational data into the warehouse.
+ Test the transformation process with a sample set of data to confirm that the warehouse model is correct. 
   + This is an important task. If problems are encountered then the data model will have to be fixed.
+ The next step is to test the transformation process with a full set of data to confirm that the process itself works correctly. 
   + Again, if there are problems, then the data transformation process will have to be corrected.

When this process is compelted, the data has been correctly represented in the warehouse and the process is in place for populating the data from the operational system, but the data is not yet ready for access by BCGW users. This will 





## FOR DELIVERY
This process is also referred to as creating the [Physical Data Model](glossary.md#physical-data-model).











