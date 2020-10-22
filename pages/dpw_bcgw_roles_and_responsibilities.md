---
layout: default
title: Roles and Responsibilities
nav_order: 1
parent: BC Geographic Warehouse
grand_parent: Data Publication Workflows
has_toc: false
---

DATA PUBLICATION WORKFLOWS - BC GEOGRAPHIC WAREHOUSE 
# ROLES AND RESPONSIBILITIES

Publishing new or modified BC Geographic Warehouse objects requires coordination between multiple partners including DataBC staff, the contractor involved, and the project’s business analyst. 

## Purpose

This document describes in detail the roles and responsibilities of the people who are involved in publishing data to the Data BC program.

-----------------------

## Audience

This document is directed at those who will be publishing data to the BC Geographic Warehouse (BCGW), within the DataBC Program of the Digital Platforms and Data Division, OCIO Ministry of Citizens' Services. In addition, this document may be of interest to government Business Analysts, Business Portfolio Managers, and Application Administrators. 

-----------------------
## Table of Contents
+ [**DATA DELIVERY ROLES**](#data-delivery-roles)
	+ [Vendor Delivery Personnel](#vendor-delivery-personnel)
	+ [DataBC Data Architecture Team](#databc-data-architecture-team)
	+ [Business Analyst/Business Portfolio Manager](#business-analystbusiness-portfolio-manager)
	+ [Business Area Data Manager](#business-area-data-manager)
	+ [DataBC Delivery Specialist](#databc-delivery-specialist)
	+ [DataBC Project Lead Spatial Data Architect](#databc-project-lead-spatial-data-architect)
	+ [DataBC ETL Specialist](#databc-etl-specialist)

---------------------------------------------------------------------

## DATA DELIVERY ROLES

### Vendor Delivery Personnel

**Responsibility**: _Vendor_

+ Prepares Delivery Kit and ensures all Delivery Kit components are functioning in BCGW Delivery environment
+ Notifies DataBC DA Team when Delivery Kit is ready for Migration to Test and Production
+ Works with Business Area Data Manager and the DataBC DA Team to confirm database objects and data are correct in BCGW Delivery, Test, and Production.

### DataBC Data Architecture Team

**Responsibility**: _Ministry_ - DataBC

+ Books migrations to Test and Production
+ Approves migration to go to Test once notified by Vendor Delivery Personnel that the all scripts have successfully run in Delivery, the Business Area has approved the database objects in Delivery, and the Delivery Kit is available in the appropriate GoGS Repository.
+ Assists Business Area Data Manager to review data in Test and Production if required.
+ Coordinates activities with [BC Data Catalogue Services](faq.md#bc-data-catalogue-services) and [Data Population (ETL) Services](mailto:DataBC.DA@gov.bc.ca) teams
+ Contact via email:  [Data Architecture Services](mailto:databc.da@gov.bc.ca)

### Business Analyst/Business Portfolio Manager

**Responsibility**: _Ministry_

+ Represent the Business Area and appropriate Information Management Branch
+ Coordinate patches to operational sources in cases where warehouse objects replicate their data from line of business applications
+ Coordinate with the DataBC DA Team to schedule deliveries (to ensure operational goes first, then the warehouse follows)
+ Liaise with Business Area client (i.e., the Data Manager) as required

### Business Area Data Manager

**Responsibility**: _Ministry_

+ Responsible for the data content (quality and completeness)
+ Verifies the data is loaded successfully in Delivery, Test, and Production

### DataBC Delivery Specialist

**Responsibility**: _Ministry_ - DataBC

+ Responsible for migrating contents of the Delivery Kit to BCGW Test and Production (i.e. DDL and security scripts, etc.)
+ Coordinates with [Data Architecture Services](mailto:databc.da@gov.bc.ca) to have data loaded in Test and Production
+ Notifies the DataBC DA Team on status of migration

### DataBC Project Lead Spatial Data Architect

**Responsibility**: _Ministry_ - DataBC

+ Responsible for initial population of data to tables in Test and Production if using FME scripts
+ Provides FME Replication details to BCGW ETL Specialist for on-going or ‘on demand’ replication scheduling
+ Establishes and enforces data model design standards
+ Ensures that data loading processes and data access activities follow best practices
+ Reviews and approves logical and physical model designs
+ Provides feedback and reviews on data delivery kits

### DataBC ETL Specialist

**Responsibility**: _Ministry_ - DataBC

+ Assists with data population of warehouse objects when FME is not involved
+ Deployment of FME scripts to appropriate replication server home
+ Configure and scheduling of ongoing replication processes

[RETURN TO TOP][1] 

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > DATA PUBLICATION PROCESS][2]

-------------------------------------------------------

[1]: #data-publication-roles-and-responsibilities
[2]: ../index.md#data-publication-process

