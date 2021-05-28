---
layout: default
title: Application Resources
nav_order: 332
parent: Publication Workflow - Beta
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

## BC DATA CATALOUGE RESOURCE MANAGEMENT
1. Resources to a record can be the following types:
    - [Application](./dps_bcdc_w_application_2.md)
    - [Geographic Data](./dps_bcdc_w_geographic_2.md)
    - [Tabular Data/Document](./dps_bcdc_w_dataset_2.md)
    - [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store) or be externally referenced.
2. Resources that are sourced from the BC Geographic Warehouse are managed differently.
3. At times resources are only metadata about a resource that is not accessible or requires authorization to access.
4. If a resources requires authorization, we recommend that that process or form is added as a resource to the record, e.g. [Request Archaeology Inforamtion](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as describled below.

## APPLICATION RESOURCE MANAGENT

**Title**: is the title of the resource as it will appear on the metadata record. 

**RESOURCE**

+ **URL**: is a link to a application. This may be public or secure.

+ **FILE**: is to upload a file, e.g., CSV, directly into the Catalogue Data Store.

---------------

**Resource Type**: Select **Webservice/API**

**Resource Description**: is a detailed description of the resource.

**Supplemental Information**: Any additional relevant information about the resource can be included here.

**Resource Update Cycle**: describes how often the resource is updated.

**Temporal Extent**:
If your dataset is temporal in nature, you may provide the relevant dates in this area
+ **Beginning Date** is the start date for the preiod the data is captured for.
+ **End Date** is the end date for the preiod the data is captured for. 

**Resource Stroage Format**: describes the file extension for the resource.

**Resource Storage Location**: is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**JSON Table Schema**: (**NEW**)

**Resource Type**: is the type of resource: Data, Reports or Abstraction.

**Resource Access Method**: describes how the end-user can access the data.

+ **Link to iMap** shows an interacive preview of the data in iMapBC.

Click **Save** when done


+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application_2.md)
- [Geographic Data](./dps_bcdc_w_geographic_2.md)
- [Tabular Data/Document](./dps_bcdc_w_dataset_2.md)
- [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
