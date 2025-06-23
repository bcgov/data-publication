---
layout: default
title: Publication Workflow
nav_order: 42
parent: BC Geographic Warehouse
has_children: true
has_toc: false
---

# BC GEOGRAPHIC WAREHOUSE DATA PUBLICATION

When data is published to the BC Geographic Warehouse, it will undergo a standardized publication process to ensure adherence to government data standards for quality and consistency. DataBC's [Data Standards](dsg_bcgw_data_standards.md) are a helpful resource to reference as you prepare your data for publishing.

The workflows described below will guide you through the steps and requirements when working with DataBC to publish data in the BCGW.  

_This page is written in the context that you have reviewed the documentation as listed below._

|**AUDIENCE**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Managers* | *Application Administrators* |

-----------------------
## Table of Contents
+ [**Documentation Review**](#documentation-review)
+ [**Getting Started**](#getting-started)
+ [**Data Publication**](#data-publication)
	+ [Week 1: Project Scoping/Technical Sessions](#week-1-project-scoping--technical-sessions)
	+ [Week 2: Test Deployment](#week-2-test-deployment)
	+ [Week 3: Client Review](#week-3-client-review)
	+ [Week 4: Production Deployment](#week-4-production-deployment)
	+ [Post Production](#post-production)
+ [**Additional Considerations**](#additional-considerations)
	+ [Data Security: Application Access](#data-security-application-access)
 	+ [Data Security: Named User Data](#data-security-named-user-data)
  	+ [Data Licensing](#data-licensing)
  
-----------------------

## Documentation Review

The first step in the process is to review the following documentation: 
+ [Before You Start](dsg_before_you_start.md)
+ [BCDC Standards and Guidelines](dsg_bcdc.md)
+ [BCGW Standards and Guidelines](dsg_bcgw.md)
+ [Common Data Standards and Guidelines](dsg.md)
+ [Data Governance](dg.md)
+ [Open Data](open_data.md)

------------------------------

## Getting Started

Wondering if your data is ready for publishing in the BC Geographic Warehouse, or what you need to do to prepare for the publication process? The following table describes some key considerations you'll need to think about before initiating a request to publish your data.

|Consideration|Additional Details|
|:---|:---|
|Have you read and do you understand the information provided in the Documentation Review section?|Please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/16) if you have additional questions not addressed in our documentation.|
|Has the [Data Custodian](glossary.md#) approved the publication of this dataset for your business area?| Data Custodians are responsible for ensuring the business area has resources to support the management of the data throughout its lifecycle.|
|Is the source data in a production state and ready for publishing?|When data is ready for production, it has a finalized data model, has been QA/QC'd by the business area, and is populated with publication-ready data. If you are unsure or need advice, open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/16).  |
|Have you completed the [Dataset Model](images/Dataset_Model_Current_TEMPLATE.xlsx) file?|The Dataset Model describes your source data structure (fields, data type, data length, column comments). |
|For spatial datasets: Do you have GIS staff available to support the creation of layer files and QA/QC throughout the publication process?|For business areas without GIS support, this service can often be provided by [GeoBC](https://geobc-geospatial-services-governmentofbc.hub.arcgis.com/).|
|Do you have a [Data Manager](glossary.md#) identified who will be responsible for the day-to-day maintenance of the source data?|The business area must have an assigned Data Manager for the data, throughout it's lifecycle.|
|Who will use the data? | This can be one or more of: Public, Government, Business BCeID |
|Does your business area have other data published in the BC Data Catalogue?|If not, DataBC can set up your organization in the BC Data Catalogue, with approval from the Data Custodian.|
|Does your business area have a defined BC Data Catalogue editor that will create and maintain the metadata throughout its lifecycle?|If not, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3/create/13).|
|How will your data be licensed when published?|See [Licences](dps_licences.md)|
|Are there legislative constraints that will have an impact on the publication date for the data?| |

--------------------------------

## Data Publication

Once you're ready to publish your data, please review the workflow below, then open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/28). Once submitted, you will receive an automated email confirmation of your request. 

DataBC will work to prioritize your request into a four-week work cycle, at which point you will receive a notification in your Data Systems and Services (DATABC) ticket confirming your availability to work with us. We aim to provide about two weeks notice prior to the initial project scoping meeting.

### Week 1: Project Scoping / Technical Sessions

**Required attendees:** 

* Client data manager(s)
* GIS staff (if different from the client data manager)
* Database Administrator (if source data is in an operational database)

#### Project Scoping - 1 Hour

The Project Scoping meeting allows DataBC’s Data Architects to get to know you and your data, understand the business requirements and project scope.

The team will review the data publication process with you and discuss any additional requirements that may be needed to successfully publish your data and configure access for end-users, e.g., BCGW Test database access, BC Data Catalogue editor access.

Discussion in this session will focus on:
1. Details of the request to publish data
1. Access to the source data
1. Security for the data
1. Data Distribution 
1. Data Licensing
1. Size of the data and expected growth
1. Frequency of updates to the data
1. BC Data Catalogue metadata requirements
1. Layer file requirements
1. Technical or time constraints

At the end of this session, it will be determined which of DataBC’s data publication platforms is most appropriate for your data and user needs; BC Data Catalogue, BC Geographic Warehouse, or BC’s MapHub.

#### Technical Session - 1 Hour

The technical session will focus on a review of the data model submitted by the client and DataBC’s access to the source data, including:

1. Description of the dataset(s)
1. Dataset naming
1. Column naming
1. Column data types
1. Column descriptions
1. Data model for related database views (if applicable)
1. Access to source data (operational database, BCGW Staging Area)

[RETURN TO TOP][1] 

-------------------------------

### Week 2: Test Deployment

During this phase, DataBC will:

1. Deploy the data as modelled into the BCGW Test database
1. Create the replication script and populate the BCGW Test database object(s)
1. Notify the client via the DATABC ticket when the data has been successfully deployed and populated in BCGW Test

#### Data Access Configuration

Once the client data manager has been notified that the data is available in BCGW Test, they will:

1. Draft the new BC Data Catalogue metadata record(s), describing the dataset in full detail, referring to [Making Useful Metadata](tips_tricks_making_useful_metadata.md)
1. For spatial datasets, client will create the layer file(s) based on the [Layer File Presentation standards](dsg_bcgw_layer_file_presentation.md), sourced to BCGW Test

[RETURN TO TOP][1] 

-------------------------------

### Week 3: Client Review

During the Client Review period, DataBC is available to meet if/when needed to assist in the data review, answer client questions, address concerns, and/or accommodate change requests where feasible.

The client is expected to review the data in BCGW Test, for example:
1.	Column naming and order
1.	Data accuracy – attributes and geometry are as expected
1.	Data completeness – data is a full representation of what is supplied in the source data, e.g., record count

#### Access Configuration: Layer Presentation

The client will then submit the layer (.lyr) file via the DATABC ticket.
DataBC will then review and load the layer file into iMapBC Test and send the link to the client for review via the DATABC ticket.


#### Access Configuration: Metadata

The client will finalize the BC Data Catalogue metadata record(s) content and set the record to PENDING PUBLISH.

#### Change Requests

Any required changes to the data model as deployed or the layer presentation should be requested via the DATABC ticket as soon as possible during the client review period. This will allow for DataBC to make adjustments and re-deploy updates without impact to production deployment scheduling.

Please note that the depending on the scope of the change request, DataBC may be able to accommodate changes during the team's four week work cycle. Significant changes will likely need to be scoped out as a new project.

[RETURN TO TOP][1] 

-------------------------------

### Week 4: Production Deployment

DataBC will deploy the data to BCGW Production and finalize access configurations, including:
1. Publication of the BC Data Catalogue metadata record(s)
1. Creation of DataBC's standard BC Geographic Warehouse data resource in the BC Data Catalogue record
1. Data distribution configuration for the BC Geographic Warehouse data resource
1. Publication of the layer presentation in the Layer Library, production iMapBC

#### Client Production Review

Client will review production deployments, including:
1. Dataset(s) in the BC Geographic Warehouse
1. Layer presentation(s) in iMapBC and the Layer Library
1. Ability to download the data via the BC Geographic Warehouse data resource in the BC Data Catalogue record (where applicable)

[RETURN TO TOP][1] 

-----------------------

### Post-Production

#### Public Web Services

For publicly available data, the related Web-based services are created and become available for use on the Thursday after production deployment is complete in the BC Geographic Warehouse, iMapBC, and the BC Data Catalogue. These include:
1. WMS
1. KML
1. ArcGIS Online Feature Layer

DataBC will create the related BC Data Catalogue resources for these services, once they are available.

[RETURN TO TOP][1] 

-----------------------

## Additional Considerations

### Data Security: Application Access

1. DataBC's standard WMS services should be used for application access.
1. DataBC may consider providing a database proxy account where the client has supplied a reasonable explanation as to why standard web services cannot be used.

### Data Security: Named User Data

Requirements for Named User access:
1. Data is highly secure, and cannot be shared across government, **and**
1. Data is required to be accessible beyond the client business area (e.g., branch), but only by specific named users

Access Configuration:
1. DataBC will configure database access based on a list of users provided by the client at the time of publication
	1. Client will supply the name of a Delegator, who will approve the addition or removal of users
	1. The Delegator will request any future additions or removal of users via the NRM IT Portal
1. Client will determine whether access is required for:
	1. Secure iMapBC
	1. Data distribution (download)

### Data Licensing

All data publications with public access are encouraged to complete an Open Data Assessment and Checklist to determine which licence is appropriate for the data.
1. [Open Government Licence – British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61)
1. [Access Only](https://www2.gov.bc.ca/gov/content?id=1AAACC9C65754E4D89A118B875E0FBDA)

[RETURN TO TOP][1] 

------------------------  

Do you still have questions for DataBC about the data publication process? If so, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/16) 

------------------------  

[1]: #bc-geographic-warehouse-data-publication
