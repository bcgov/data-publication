---
layout: default
title: Roles & Responsibilities
nav_order: 49
parent: BC Geographic Warehouse
has_toc: false
---

# Roles and Responsibilties

Publishing new or modified BC Geographic Warehouse objects requires coordination between multiple partners including DataBC staff, the contractor involved (if applicable), and the project’s business analyst. 

This page describes the roles and responsibilities involved in publishing data to the BC Geographic Warehouse through the Data BC program.

|**Audience**|  |  |  |
|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Business Analysts* | *Business Portfolio Managers* | *Application Administrators* |

---------------------------------------------------------------------

## DataBC 

### Pre-Publication

+ Provide documentation on the client workflow for publishing, maintaining, and retiring data sets (known as the data lifecycle) in the BC Geographic Warehouse 
+ DataBC may provide additional consulting services for preparing the source data, prior to a data publication request being initiated 

### During Publication

+ Be available to the client for additional questions or issues that arise throughout the publication process 
+ Schedule regular meetings with the client, at mutually convenient times, for each stage in the data publication process (see Scheduled Meetings)
+ Communicate timelines for each stage in the data publication process 
+ Provide updated timelines when affected by change of scope, technology or shifts in priorities 
+ Review and provide feedback on the Dataset Model as submitted by the client 
+ Review and publish a layer file in iMapBC and/or the Layer Library, if applicable 
+ Review and publish BC Data Catalogue metadata record(s) 
+ Configure Data Distribution, if the data will be available for download 
+ When there is a DataBC hosted map application involved (not including iMapBC), plan and coordinate required application changes through the Delivery, Test, Production environments 
+ Deploy data sets to Delivery, Test and Production BCGW environments 
+ Configure and/or schedule data replications from source to target (BCGW) 
+ Communicate any issues or concerns with the client as they arise

### Post-Publication

+ Provide an opportunity for feedback at the close of the project 
+ Review client feedback and apply learnings to related aspects of the data publication process 
+ Continuously monitor scheduled replications and address any issues as they arise 
+ Notify client of any issues with the data, access, layer presentation, distribution, or configured applications throughout the lifecycle of the data 

## Client

### Pre-Publication

+ Review all required documentation as described in the [Data Publication Workflow](dps_bcgw_w.md)
+ Ensure that the data to be published follows standards and guidelines as described in:
	+ BC Geographic Warehouse - [Data Standards and Guidelines](dsg_bcgw_data_standards.md) 
	+ [Common Standards and Guidelines](dsg.md) 
+ Ensure that the data to be published is in a production state and ready for publishing in the BC Geographic Warehouse prior to requesting publication 
+ Considerations may be made where new applications being built rely on testing the data throughout deployments in delivery and test database environments. 
+ Complete the [Dataset Model](https://bcgov.github.io/data-publication/pages/images/Dataset_Model_Current_TEMPLATE.xlsx) in preparation for submitting the request to publish (this is a requirement to request publication) 
+ Submit the request to publish in the Data Sytems and Services Request System as a Share New Data request

### During Publication

+ Communicate with the DataBC team via the Share New Data request created in the Data Sytems and Services Request System 
+ Attend and contribute to all regularly scheduled meetings throughout the data publication process 
+ Communicate with the DataBC team when there are changes to scope or shifts in priorities 
+ Address issues or concerns as they arise. If issue resolution impacts timelines, this will be communicated with DataBC 
+ If the dataset is to be configured for use in iMapBC, the Layer Library, ArcGIS Online, or as a WMS, the client will supply a layer file.  
+ DataBC is available to provide this service when the business area does not have GIS support.  
+ Prepare the BC Data Catalogue record and set the State to Pending Publish prior to data being migrated to production  
+ Complete and submit the Open Data Assessment and checklist to DataBC where the data will be licensed under the Open Government Licence – British Columbia. 

### Post-Publication

+ Provide the DataBC team with feedback at the close of the project 
+ Ensure source data model remains unchanged. Changes to the data model post-project can occur, but will be initiated through a separate request (costs often apply) 
+ Maintain BC Data Catalogue record with current information throughout the lifecycle of the data 
+ Notify DataBC when the dataset is at the end of its lifecycle and should be retired 
+ Client to notify DataBC of any issues with the data, access, layer presentation, distribution, or configured applications throughout the lifecycle of the data 
+ Client to maintain and resolve any issues that arise with the source data for replication to the BCGW throughout the lifecycle of the data 


-------------------------------------------------------

[RETURN TO TOP][1] 

[1]: #roles-and-responsibilities
