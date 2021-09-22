---
layout: default
title: Glossary
nav_order: 13
has_toc: false
---

# GLOSSARY

| |Acronym|Term|Definition|
|-|:---:|:---|:---|
|**A** |    |<a name="access_approver">Access Approver</a>|A _Role_ in the BC Data Catalogue, the Access Approver is someone who:
|      |    |       | 1. can approve access requests to a [BCGW](./glossary.md#BCGW) **Named User** list.
|      |    |<a name="application">Application</a>|A dataset type in the metadata record, this category is used for applications that provide access to data.|
|      |    |ArcGIS | Developed by ESRI, ArcGIS is a geographic information system (GIS) for working with maps and geographic information maintained by the Environmental Systems Research Institute (Esri). It is used for creating and using maps, compiling geographic data, analyzing mapped information, sharing and discovering geographic information, using maps and geographic information in a range of applications, and managing geographic information in a database.|
|       |AGO|ArcGIS Online|ArcGIS Online is a cloud-based mapping and analysis solution. It is used to make maps, analyze data, and to share and collaborate. Users can access workflow-specific apps, maps and data, and tools for being mobile in the field.|
|**B** |BCGW|<a name="BCGW">BC Geographic Warehouse</a>| The BCGW is a spatially enabled Oracle Database that contains thousands of spatial and non-spatial datasets. |
|       |   | BCGW Delivery | Delivery is an instance of the BCGW that is open to vendors to use as a proofing ground for all components being prepared for migration to BCGW Production. | 
|       |   |B.C. MapHub|The B.C. Map Hub is the official B.C. Government presence in ArcGIS Online.  It is a collaborative place to explore, engage, innovate and communicate using the language of maps and data.  Search for content, browse maps, ask questions and for government professionals - author content.  Make a map, share your data, collaborate with others. |
|       |   | BCGW Production | Production is an instance of the BCGW that is the main operational data repository for the province’s SDI. |
|       |   | BCGW Test  | Test is an instance of the BCGW that is used by DataBC, business areas, and vendors to review data warehouse objects and updates as deployed from vendor Delivery Kits. BCGW Test is not open for vendors to deliver to, rather DataBC staff deploy and populate objects. Once a Delivery Kit deploys successfully, notification is sent and connect details are provided to begin testing. |
|       |   |<a name="business_expert">Business Expert</a>| A _Role_ in the BC Data Catalogue, the Business Expert is someone who:
|       |   |   | 1. provides business context to the published data; and
|       |   |   | 2. provides insight to consumers of data rationale and other possible records to answer questions. 
| **C** |   |Conceptual Data Model| An organized view of database concepts and their relationships. The purpose of creating a conceptual data model is to establish entities, their attributes, and relationships.
|       |   |<a name="custodian">Custodian</a>| A _Role_ in the BC Data Catalogue, the Data Custodian is someone who:
|       |   |   | 1. protects and promotes the use of data holdings under their care;
|       |   |   | 2. sets policies, and is accountable for defining the appropriate use of the data;
|       |   |   | 3. provides the authoritative version of the data; and
|       |   |   | 4. is ultimately accountable for issues related to definition, collection, management and authorized use of the data. 
|       |   |   |Every data holding should have one and only one Data Custodian - usually someone at the Director or Executive Director level.
| **D** |   |<a name="dataset">Dataset</a>|A dataset type in the metadata record, this category is used for tables in Comma Separated Value (CSV) files, or MS Excel Spreadsheets (XLS) or possibly even tabular PDF files.|
|       |   |Dataset Model| An .xls file used in the Data Modelling process that describes business, data, security, and object details about a dataset. 
|       |DBC|Data British Columbia | A database set up to hold DataBC applications and their system components. |
|       |DA |Data Administrator|A person responsible for setting policies and standards related to managing and protecting data.
|       |   |<a name="data_manager">Data Manager</a>| A _Role_ in the BC Data Catalogue, the Data Manager is someone who:
|       |   |   | 1. is appointed by a Data Custodian to manage a specific data set according to policies, plans and standards defined by the Data Custodian;
|       |   |   | 2. may take direction from a Data Steward designated by the Data Custodian;
|       |   |   | 3. is responsible for day-to-day management of the data and may coordinate with operations staff;
|       |   |   | 4. usually has technical knowledge of the data, its collection & storage, and ways in which the data is commonly used.|
|       |   |Data Model| A formal description of the structure of a data set - that is, the types of data, their properties and relationships. A data model is created to describe how your data will be stored in the BCGW.|
|       |   |Data Population| The process of retrieving data from the Data Custodian's source system, transforming it as required and storing it in the BCGW.
|       |   |Data Products| Pre-defined packages of data that BCGW users can browse and download via the BCGW's data catalogue.
|       |   |Data Publisher| A person responsible for publishing data to the DataBC Program. This person could hold the responsibilties of any of the following roles in the BC Data Catalogue: Data Custodian, Data Manager, or Data Steward and could also be a Metadata Editor. |
|       |   |<a name="data_steward">Data Steward</a>| A _Role_ in the BC Data Catalogue, the Data Steward is someone who:
|       |   |   | 1. has an agreement with the Data Custodian to provide a specific set of custodial duties on behalf of the Data Custodian;
|       |   |   | 2. has the ability and resources to provide this specific set of custodial duties as required by the Data Custodian;
|       |   |   | 3. is usually at the director level, like the Data Custodian;
|       |   |Delivery Kit | A collection of files that are required by DataBC to migrate to the Test and Production instance of the BCGW. Delivery Kits are built by a vendor and are required for new database objects, changes to existing, or updating data in the BCGW. |
|       |   | Discipline Authority| A business expert who understands the business relevance of data standards, and supports their application and use to meet an organization's needs.
|       |   |<a name="distributor">Distributor<a/>| A_Role_ in the BC Data Catalogue, the Distributor is someone who:
|       |   |   | 1. distributes the published data on behalf of the Organization (branch or division), and
|       |   |   | 2. does not own the record and resources, but works closely with the other roles associated to the record.
| **E** |ETL|Extract Transform Load | Extracting data from operational sources, transforming it to fit operational needs, and loading it to the BCGW. |
|       |   | Enhanced Information | Existing information that has become value-added through the addition of information not already contained within the data, or information that was created as a result of an analysis process or amalgamation of information. For the purposes of AGO metadata requirements, if the AGO layer Item Details page can sufficiently describe how the information was added/created and the sources from which it came so that an average user (i.e., member of the public) could access and recreate this enhanced information based on the information provided, then no additional metadata record would be required for this layer. This being said however, it may be advisable to create such a metadata record to address the volume of questions from interested users.
| **F** |FME  |Feature Manipluation Engine | ETL software written by Safe Software that is used by DataBC for the majority of data loads to BCGW feature classes. |
| **G** |     |<a name="geographic_dataset">Geographic Dataset</a>|A dataset type in the metadata record, this category is used for data that contains geospatial information along with other data.  In the metadata record, additional geospatial metadata elements are available to be populated, e.g., spatial reference system. This category must be used for all BCGW Datasets.|
|       |GOGS |Go Git Service | DataBC uses the Gogs Repository as a Source Code Management System to store BCGW Data Delivery Kits. The developers should use their own forked repository during development. When the project is ready to be delivered to the Ministry for testing in the delivery environment or for a final delivery, the vendor makes a pull request to the Ministry's DA's. Details are available in the [Gogs Instructions for Vendors](https://gogs.data.gov.bc.ca/datasets/templates/src/master/delivery_kit/Gogs_Instructions_For_Vendors.md). |
|       |GSR  |Geographic Sites Registry| A set of tables and views in the BC Geographic Warehouse used to store and present geographic point locations where services are provided to the public. Examples of GSR datasets are: Hospitals in BC, First Responders, and Court Locations. GSR is architected in a way that makes it easy (and inexpensive) to add new GSR datasets and make changes to existing ones. |
| **L** |     |Layerfile| In ArcGIS, a file with a .lyr extension that stores the path to a source dataset and other layer properties, including symbology.
|       |     |Logical Data Model| Used to define the structure of data elements and to set relationships between them. The logical data model adds further information to the conceptual data model elements and is a formal description of the structure of a data set.
| **M** |     |Metadata| Simply put, metadata is data about data. It is a collection of information that describes a wide variety of data characteristics, including such topics as geographic extent of the data, when the data was collected, who collected it, who owns it, its format, quality, version number, rights of use, how often it's updated, its intended usage, and so on. Examples of BC Data Catalogue metadata are: database table descriptions, data relationship mapping, storing who created/updated data, and purpose of the data.
|       |     |Metadata Editor| A person responsible for creating or maintaining metadata in the BC Data Catalogue.
| **N** |     |New information | Information that resides only in AGO and does not exist within the BCGW or the BCDC.|
| **O** |OGL-BC|Open Government Licence - British Columbia | Information on the Open Government Licence - British Columbia can be found [here](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc) | 
| **P** |     |Physical Data Model| Describes a database-specific implementation of the data model. The physical data model also helps in visualizing database structure by replicating database column keys, constraints, indexes, triggers, and other RDBMS features.
|       |     |<a name="point_of_contact">Point of Contact | A _Role_ in the BC Data Catalogue metadata record, the Point of Contact is the person available to contact for questions end-users may have about the dataset. | 
  | **R** |     |<a name="Record">Record</a>|A record is defined as the metadata supporting the associate resources/datasets.|
| **S** |SDE  |Spatial Database Engine | Software created by ESRI which allows arcGIS to communicate with Relational Database Systems to manipulate spatially-enabled data. |
|       |SDI  |Spatial Data Infrastructure | DataBC’s geographic information infrastructure including the data warehouse, middle tier, servers, and related spatial services. |
|       |SDO  |Spatial Data Object | It is a data storage option for spatial attributes, created by Oracle Corporation |
|       |     |Security Profile | Defines who may access your data and what they can use it for. The security profile (which is part of the metadata) is very important because it ensures that user access is consistent with your policies for data security, confidentiality and appropriate use. |
| **V** |VPN  |Virtual Private Network | Service which provides secure, encrypted transport of traffic from external networks into the BC Government’s network (entitled SPAN/BC). It is intended for telecommuters, mobile workers, external partners, vendors and contractors who use commercial Internet Service Providers and need to access SPAN/BC. |
| **W** |     |<a name="webservice_api">Web Service - API</a>|A dataset type in the metadata record, this category is used for metadata relating to web services or application programming interfaces.|
  
Looking for an acronym or definition that's not in this list? Let us know at Data@gov.bc.ca.

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #glossary
