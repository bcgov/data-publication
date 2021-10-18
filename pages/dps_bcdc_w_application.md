---
layout: default
title: Application Resources
nav_order: 322
parent: Publication Workflow
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

## APPLICATION RESOURCE MANAGEMENT IN THE BC DATA CATALOGUE 

**This document has been uppdated to correspond with the BC Data Catalogue Beta release that will go to production soon.**

For the classic catalogue pages see [BCDC Classic Worklfow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

--------------

**Name**: is the name of the resource as it will appear resource record associated to the metadata record. 
+ This is **required**.

**_Resource_**: can either be presented as a URL or upload 

+ **URL**: is a link to an application. This may be public or secure.

+ <a name=upload_file>**File**</A>: is to upload a file, e.g., CSV, directly into the Catalogue Data Store.

---------------

**Type**: Select **Application**

+ **Changes**:
    - Value: 'Application' has changed to all lowercase 'application'

---------------

**Resource Description**: is a detailed description of the resource.
+ This is _optional_, but it is highly recommended that a brief description is provided to give the consumer context to the resource. 

**Supplemental Information**: Any additional relevant information about the resource can be included here.
+ This is _optional_

**Resource Update Cycle**: describes how often the resource is updated.
+ This is **required**


**_Temporal Extent_**:
If your dataset is temporal in nature, you may _optionally_ provide the relevant dates in this area
+ **Beginning Date** is the start date for the period for which the data is captured.
+ **End Date** is the end date for the period for which the data is captured. 

**Resource Storage Format**: describes the file extension for the resource.
+ This is **required**

**Resource Storage Location**: is the location where the resource is stored. For files that have been uploaded using the [_Upload File_](upload_file) above, choose Catalogue Data Store.

**JSON Table Schema**: (**NEW**)

**Resource Type**: is the type of resource: Data, Reports or Abstraction, and is **required**.

**Resource Access Method**: describes how the end-user can access the data.

Click **Save** when done


+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application_2.md)
- [Geographic Data](./dps_bcdc_w_geographic_dataset_2.md)
- [Tabular Data/Document](./dps_bcdc_w_dataset_2.md)
- [Webservice/API](./dps_bcdc_w_webservice_api_2.md)
