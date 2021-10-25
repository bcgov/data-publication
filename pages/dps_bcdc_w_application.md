---
layout: default
title:  Application
nav_order: 342
parent: How to use the UI
grand_parent: BC Data Catalogue
has_children: false
has_toc: false
---

## APPLICATION RESOURCE MANAGEMENT IN THE BC DATA CATALOGUE 

**Corresponds to the Beta BC Data Catalogue release that will go to production soon.**

For the classic catalogue specific user pages see [BCDC Classic Workflow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

---------------
**Resources**
+ See the full list of value options for drop down fields, see the [BCDC Schema](https://cat.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#application-resource-level-changes)

---------------

**To add a resource:**
1. Click the **Add Resource** button on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described below.


---------------

**Title**
+ Is the title of the resource as it will appear on the metadata record. 

**_Resource_**

+ **URL**
    - Is a link to a applicaiton location
    - Secure applications may also be listed.

+ **File**
    - Files specific to an application most likely would not be defined as an application resource but another type, e.g, Document/Tabular Data.

---------------

**Type**

+ Select **Application**

+ **Changes**:
    - Database Value: 'Application' has changed to 'application'

---------------

**Resource Description**

+ Is a detailed description of the resource.

**Supplemental Information**

+ Any additional relevant information about the resource can be included here.

**Resource Update Cycle**

+ Describes how often the resource is updated.

+ **Changes**:
    - **NEW Values** "Nightly" (`nightly`); "Unknown" (`unknown`)


**_Temporal Extent_**

+ If your dataset is temporal in nature, you may provide the relevant dates in this area
    - **Beginning Date** is the start date for the period the data is captured for.
    - **End Date** is the end date for the period the data is captured for. 

**Resource Storage Format**

+ Describes the file extension for the resource.
+ See the full list of value options see the BCDC Schema as linked at the top of this page.

+ **Changes**:
   - **NEW Values** "geopackage" (`gpkg`); "multiple" (`multiple`)

**Resource Storage Location**

+ Is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.
+ See the full list of value options see the BCDC Schema as linked at the top of this page.


+ **Changes**:
   - **Database value** all database entries are now lower case. e.g., `BC Data Catalogue` has changed to `bc data catalogue`

**JSON Table Schema**

+ **Changes**: **NEW**

**Resource Type**

+ Is the type of resource, for Applications this may not be applicable and thus choose "Not Applicable".

+ See the full list of value options see the BCDC Schema as linked at the top of this page.

**Resource Access Method**

+ Describes how the end-user can access the application.
+ See the full list of value options see the BCDC Schema as linked at the top of this page.

+ **Changes**:
   - **NEW Value** "Other" (`other`)

Click **Save** when done


+ Additional resources can be added by repeating the process above or adding other resource types.


## OTHER RESOURCES TYPES
- [Application](./dps_bcdc_w_application.md)
- [Document/Tabular Data](./dps_bcdc_w_dataset.md/)
- [Geographic Data](./dps_bcdc_w_geographic_dataset.md)
- [Webservice/API](./dps_bcdc_w_webservice_api.md)
