---
layout: default
title: Tabular Data Resources
nav_order: 326
parent: Resource Management
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

## DOCUMENT or TABULAR DATA RESOURCE MANAGEMENT

**This document corresponds with the BC Data Catalogue Beta release that will go to production soon.**

For the classic catalogue pages see [BCDC Classic Worklfow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

---------------

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below.

---------------


**Title**: 
+ Is the title of the resource as it will appear on the metadata record. 

**_Resource_**

+ **URL**: 
    - Is a link to a file or resource stored elsewhere, e.g., a website or FTP site.
    - For resources that are not available unless authorized a link to a webpage or form to instruct consumers how to obtain access, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3)

+ **File**: is to upload a file, e.g., CSV, directly into the Catalogue Data Store.


---------------

**Type**: Select **Document/Tabular Data**

+ **Changes**:
    - Value: 'dataset' has changed to 'document'
    - Other changes [see Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#geographic-data-resource-level-changes)

---------------

**Resource Description**: is a detailed description of the resource.

**Supplemental Information**: Any additional relevant information about the resource can be included here.

**Resource Update Cycle**: describes how often the resource is updated.

**_Temporal Extent_**:
If your dataset is temporal in nature, you may provide the relevant dates in this area
+ **Beginning Date** is the start date for the period the data is captured for.
+ **End Date** is the end date for the period the data is captured for. 

**Resource Storage Format**: describes the file extension for the resource.

**Resource Storage Location**: is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**JSON Table Schema**: (**NEW**)

**Resource Type**: is the type of resource: Data, Reports or Abstraction.

**Resource Access Method**: describes how the end-user can access the data.

Click **Save** when done


+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application.md)
- [Document/Tabular Data](./dps_bcdc_w_dataset.md/)
- [Geographic Data](./dps_bcdc_w_geographic_dataset.md)
- [Webservice/API](./dps_bcdc_w_webservice_api.md)
