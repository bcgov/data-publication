---
layout: default
title: Publication Workflow
nav_order: 42
parent: BC Geographic Warehouse
grand_parent: Data Publication Services
has_children: true
has_toc: false
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

## DATA PREPARATION

The effort required to publish data to the BCGW depends on the nature and complexity of your data set. As a _Data Publisher_, you will need to keep in mind that this process is to not just end up with your data in the BCGW, but that it is packaged and presented in a format that makes it easy for your clients to use it for planning, analysis and decision-making.

Though the steps described in this page represent the complete BCGW population sequence, the process will be "right-sized" to fit your needs. To determine which steps are required for your dataset, we recommend thinking first about the final steps of the process (i.e., how will I present my data and what data products will I provide?), and then working backwards. This can help you define the security, metadata and other modelling requirements.

![Steps for placing data in the warehouse](images/Steps_for_placing_data_in_the_warehouse.JPG)

### Create a Plan

Depending on the size and complexity of your data, the steps required to prepare the data and make it accessible using the BCGW may take days or weeks, and will require participation from your staff throughout the process. To better understand the process and specific requirements, start first with reviewing the BCGW Readiness Worflow and the answering the questions in Before You Start. Then, you can create a work plan to ensure you have the required time and resources. 

1. [BCGW Readiness Workflow](images/wf_BCGWReadiness.svg)

![BCGW Readiness Workflow](images/wf_BCGWReadiness.png)

1. [Before You Start](#documentation-review)

1. Create a work plan ### WHAT ARE WE ASKING THEM TO HAVE IN THEIR WORK PLAN?
+ Contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to get started and provide advice about resourcing. 
+ Identify your Business Analyst (or person desginated to act in this role) from your team that will facilitate the process.
+ Your Business Analyst will set up a whiteboard session that will be attended by you, technical staff, and any vendors who may be involved in developing and maintaining your operational system. 

### Whiteboard Session

Once you have completed the documentation review and questions, it's time to contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to schedule a Whiteboard Session.  This purpose of this session is to discuss your dataset, the questions you answered in Before You Start as well as provide you with some personal guidance on next steps for the process.

+ The purpose of the whiteboard session is to develop a plan that defines all the resource required, role and responsibilities, issue and timelines.
+ This plan must be approved by you before work proceeds.
+ Your Business Analyst will then implement and manage the plan to completion.
+ Based on need, a Stewardship agreement may be developed.
+ The process to establish the licensing requirements for the data is also initiated at this point using the Open Data Assessment Checklist.

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



















#### FOR WHITEBOARD SECTION

