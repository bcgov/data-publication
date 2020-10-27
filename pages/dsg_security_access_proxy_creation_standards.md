---
layout: default
title: Proxy Creation
nav_order: 271
parent: Security and Access
grand_parent: Data Standards and Guidelines
has_toc: false
---

# PROXY CREATION

BC Geographic Warehouse (BCGW) and non-BCGW proxies are created as a means for applications to access the data, as individual Oracle accounts are not permitted to be used in this manner. Proxies will only be created for and used by the application that they were intended. 

-----------------------
## Purpose

This page will provide the standards followed when creating proxy accounts.  Out of scope, at this time, is the _Request for Proxy Account_ process. 

-----------------------

## Audience

This page is relevant to clients publishing data to the BC Geographic Warehouse (BCGW).

-----------------------

## Table of Contents
+ [**PROXY ACCOUNT NAMING CONVENTIONS**](#proxy-account-naming-conventions)
	+ [Internal Proxy Accounts](#internal-proxy-accounts)
	+ [External Proxy Accounts](#external-proxy-accounts)
	+ [Proxy Terms of Use](#proxy-terms-of-use)
	+ [Application Schema Requests](#application-schema-requests)
	+ [Change Management](#change-management)
  
-----------------------

## PROXY ACCOUNT NAMING CONVENTIONS

To facilitate streamlined management and notification, proxy accounts will conform to the following naming conventions: 

### Internal Proxy Accounts

Proxy accounts created for internal DataBC applications will follow the pattern: 

**"PROXY_TYPE_APPNAME"**

Where:

TYPE reflects the type of application making the call to the DB: 

| Type | Requester |
| :--- | :---: | 
| AGS – ArcGIS Server application    | Web mapping     | 
| AGSDYNA - ArcGIS Server connection for dynamic requests using MPCM     | Web mapping     | 
| ESS – Geocortex Essentials application      | Web mapping     | 
| JAVA – Java application     | Business Analysis     | 
| FME – FME application     | ETL     | 
| WMS – Mapserver application     | Web mapping     | 
| GEO – Geoserver application     | Web mapping     | 
| RPT - Jasper Reports application     | As required     | 
| SCRIPT - A script rather than an application (Python, AML etc.)      | As required     | 

APPNAME is the standard application or web service name

*If the account is intended to be temporary (e.g. to support a standalone mapservice referenced by a straw man IMF2 site that will never go to Production) then please append TEMP to the end of the account name.*

### External Proxy Accounts

 Proxies created for applications external to DataBC will follow the pattern: 

**"PROXY_ORG_TYPE_APPNAME"**

Where:

ORG is the ministry level organization that is responsible for the application (i.e. FLNRO, JTST)
 TYPE reflects the type of application making the call to the DB: 
   + FME – FME application 
   + JAVA – Java application 
   + NET - .NET application 
   + WMS – Mapserver application 
   + GEO – Geoserver application 
   + SCRIPT - A script rather than an application (Python, AML etc.) 


APPNAME is the standard application or web service name

*If the account is intended to be temporary then please append TEMP to the end of the account name.*

### Proxy Terms of Use

Business areas will apply the following guidelines. Failure to do so, will result in accounts being subject to freezing and/or deletion. 

#### Appropriate Use

   + Proxy will be implemented as documented in the request 
   + Proxy will not be repurposed or shared with other applications or processes 
   + DataBC will provide a single BC Government representative with proxy account passwords for use as documented in the request. The proxy password may not be distributed beyond those specifically required to use the password for application configuration. 
   + Best practices will be implemented for proxy account management (i.e. passwords updated on regular cycle) 

### Application Schema Requests

In the event that a net new application schema is required the creation scripts should be supplied as part of the application migration.  These scripts will be reviewed by the business area and the DAs to confirm that the requested parameters meet the structure and naming standards of DataBC.  Once the kit has passed this initial review it will be sent to the DBAs for final review and creation.

### Change Management

+ DataBC will be informed of changes to the application environment, including but not limited to:  
   + Server/hardware changes 
   + Usage/access patterns 
   + Software changes 
+ Attendance of a delegate at DataBC change coordination meeting to inform of changes 
+ Upon application retirement, a request will be sent to DataBC to request decommissioning of proxy 
+ Change Management notifications will be received by DataBC no less than 90 days before the date of anticipated change

[RETURN TO TOP][1]

[RETURN TO DATA PUBLICATION > DATA STANDARDS AND GUIDELINES > SECURITY AND ACCESS][2]

-------------------------------------------------------

[1]: #proxy-creation
[2]: ./dsg_securtiy_access.md

