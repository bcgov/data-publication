---
layout: default
title: Roles & Responsibilities
nav_order: 48
parent: BC Geographic Warehouse
has_toc: false
---

# ROLES AND RESPONSIBILITIES

Publishing new or modified BC Geographic Warehouse objects requires coordination between multiple partners including DataBC staff, the contractor involved (if applicable), and the project’s business analyst. 

This page describes the roles and responsibilities involved in publishing data to the BC Geographic Warehouse through the Data BC program.

|**AUDIENCE**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Portfolio Managers* | *Application Administrators* |

## Table of Contents
+ [**DATA DELIVERY ROLES**](#data-delivery-roles)
	+ [Vendor Delivery Personnel](#vendor-delivery-personnel)
	+ [DataBC Data Architecture Team](#databc-data-architecture-team)
	+ [Business Analyst/Business Portfolio Manager](#business-analystbusiness-portfolio-manager)
	+ [Business Area Data Manager](#business-area-data-manager)

---------------------------------------------------------------------

## DATA DELIVERY ROLES

### Vendor Delivery Personnel

**Responsibility**: _Vendor_

+ Prepares Delivery Kit and ensures all Delivery Kit components are functioning in BCGW Delivery environment
+ Notifies DataBC DA Team when Delivery Kit is ready for Migration to Test and Production
+ Works with Business Area Data Manager and the DataBC DA Team to confirm database objects and data are correct in BCGW Delivery, Test, and Production.

### DataBC Data Architecture Team

**Responsibility**: _DataBC_

+ Establishes and enforces data model design standards
+ Ensures that data loading processes and data access activities follow best practices
+ Reviews and approves logical and physical model designs
+ Provides feedback and reviews on data delivery kits
+ If the Delivery Kit is prepared by a vendor:
	+ Approves migration to go to Test once notified by Vendor Delivery Personnel that the all scripts have successfully run in Delivery, the Business Area has approved the database objects in Delivery, and the Delivery Kit is available in the appropriate GoGS Repository.
+ If the Delivery Kit is prepared by DataBC:
	+ Responsible for migrating contents of the Delivery Kit to BCGW Delivery (i.e. DDL and security scripts, etc.)
	+ Responsible for initial population of data to tables in Delivery

+ Books migrations to Test and Production
+ Responsible for migrating contents of the Delivery Kit to BCGW Test and Production (i.e. DDL and security scripts, etc.)
+ Responsible for initial population of data to tables in Test and Production if using FME scripts
+ Deployment of FME scripts to appropriate replication server home
+ Configure and scheduling of ongoing replication processes
+ Assists Business Area Data Manager to review data in Test and Production if required.

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


-------------------------------------------------------

[RETURN TO TOP][1] 

[1]: #roles-and-responsibilities
