---
layout: default
title: Geographic Dataset
nav_order: 3
parent: Publication Workflow
grand_parent: BC Data Catalogue
has_toc: false
---

# GEOGRAPHIC DATASET

## PURPOSE

This page contains details for completing fields in a metadata record for the Geographic Dataset type.

-----------------------

## AUDIENCE

The intended audiences for this page are:
+ clients that are publishing geographic datasets to the DataBC Program

-----------------------

## PUBLISHING A GEOGRPAHIC DATASET TO THE BC DATA CATALOGUE

### **Create Dataset**

**State**: When creating a new metadata record, the state will be set to DRAFT. 

**Title**: This is the title of your metadata record.

**URL**: This is automatically generated once the title is filled in.

**Organization**: This is the Ministry or Organization under which the metadata record is created.

**Sub-Organization**: This is the Sub-Organization (often the Branch or Division) under which the metadata record is created.

**Description**: Provide a meaningful description of the dataset here. Be sure to include any information that would be relevant to an end-user of your dataset.

**Purpose**: This is a summary of the intentions for which the dataset was developed.

**Data Quality**: This is descriptive text that can include information about issues, completeness, consistency, etc.

**Lineage Statement**: This is information about the events or source data used in constructing the data.

**More info**: Any related web site URL's can be added here.

**Keywords**: These are the searchable terms for the metadata record. Enter meaningful keywords here. Think of what users may use for search terms to find the dataset in the Catalogue.

**ISO Topic Category**: [Topic Category Definitions](https://apps.usgs.gov/thesaurus/thesaurus-full.php?thcode=15) More information: [ISO 19115-1:2014](https://www.iso.org/standard/53798.html)  

---------------
### **Contacts**

Add contacts for the following **Roles**:
1. <a href="./glossary.md/#data_custodian">Custodian</a> (required) 
1. <a href="./glossary.md/#point_of_contact">Point of Contact</a> (required) 
1. <a href="./glossary.md/#business_expert">Business Expert</a> (optional)
1. <a href="./glossary.md/#distributor">Distributor</a> (optional) 

**Name**: Contact full name

**Email**: Contact email address

**Organization**: Contact organization

**Sub-Organization**: Contact Sub-Organization

**Role**: Contact role type (as per the list above)

**Contact Displayed**: Check this box to display the contact to all catalogue users (public access). Unchecked, this contact information will only be visible to Catalogue Admin's.

---------------
### **Data Currency/Update**

**Resource Status** is the status of the dataset as described by one of the types below: 
 
|Data Update Status| Description
|:---|:---|
|Ongoing|Datasets that are regularly updated should be described as ongoing.|
|Completed|Datasets with no plan for future updates should be described as completed.
|Destroyed|Datasets that no longer exist should be described as destroyed.|
|Historical Archive|Datasets that exist, but have been archived (can also be desribed as no longer relevant) should be described as historical archive.
|Obsolete|Datasets that that have been replaced with another dataset should be described as destroyed.
|Planned|Datasets that do not currently exist, but are planned for the future, should be described as planned.
|Required| 
|Under development|Datasets that exist but are not yet completed should be described as under development.

**Date type** is used to provide details to users on when resources are created, published, modified, archived and destroyed. 

**Date** is the date the resource was either created, published, modified, archived or destroyed. 

When there are changes to a resource in a metadata record, a new date type and corresponding date should be added to this section.

---------------
### **Access & Security**

**Who can view this data?** describes who can view the BC Geographic Warehouse (BCGW) resources associated with the metadata record.

|Access Type| Description
|:---|:---|
|Public| All users are able to access the dataset.
|Named Users| Only specific named users can access the dataset.
|Government and Business BCeID| Only people with government and BCeID credentials can access the dataset.
|Government| Only government credentials can access the dataset.

---------------
**Who can view this record?** describes who can view the metadata record.

|Access Type| Description
|:---|:---|
|Public | All users of the catalogue can view the metadata record.
|IDIR | Only IDIR credentials can view the metadata record.

---------------
**Who can download this data?** desribes the security level for access to download BC Geographic Warehouse (BCGW) resources associated with the metadata record

|Access Type| Description
|:---|:---|
|Public| All users are able to access the dataset.
|Named Users| Only specific named users can access the dataset.
|Government and Business BCeID| Only people with government and BCeID credentials can access the applciation.
|Government| Only government credentials can access the dataset.
|Not downloadable| The BC Geographic Warehouse (BCGW) resources cannot be downloaded.

---------------

**License** describes the license the data is being published under. See <a href="./data_publication_workflows_bcdc.md#licenses">Licenses</a> section for more info.

**Security Classification**

|BCDC Security Classication| [Information Security Classification Levels](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)| Description
|:---|:---|:---|
|High - Cabinet, High - Confidential, High - Sensitivity|Protected C | Extremely grave harm to an individual, organization or government. Examples: Information about police agents and other informants, Cabinet records or Cabinet-related records
|Medium - Personal, Medium - Sensitivity|Protected B | Serious harm to an individual, organization or government. Examples: Law enforcement and medical records, personnel evaluations and investigations, financial records, information subject to solicitor-client privilege or other legal privilege
|Low - Sensitivity|Protected A | Harm to an individual, organization or government. Examples: Home addresses, dates of birth, other low-risk personal information
|Low - Public|Public|No harm to an individual, organization or government. Examples: Job postings, communications to claim clerks, business contact information, research and background papers (without copyright restrictions)

---------------
### **Preview Information**

 **Image URL** shows a preview of the data as a static image.

 **Link to iMap** shows an interacive preview of the data in iMap.
 1. Add the layer to a new iMap session
 1. Copy the URL
 1. Paste the URL in this field

**Preview Latutude** allows you to provide a map preview centroid latitude.

**Preview Longitude** allows you to provide a map preview centroid longitude.

**Preview map service URL** allows you to provide an alias for the map service URL.

**Preview Zoom level** allows you to provide an initial zoom level for the map preview.

---------------

### **Geograhic Extent**

**North/South/East/West** this is already done in the table

**Spatial Datatype** refers to the datatype in the database. For data stored in the BCGW, choose SDO_GEOMETRY.  If you are unsure, leave this field blank.

|Spatial Datatype| Description
|:---|:---|
|SDE_BINARY| This is the older ESRI based geometry that used to be what the bcgw was, most minitiries do not use this anymore
|SDO_GEOMETRY| This is Oracle geometry and what the BCGW and NRM uses predominately as their datatype.
|ST_GEOMETRY| This is the current ESRI based geometry.

**Object Name** is the object name as it appears in the BCGW: _SCHEMA.OBJECT_. Example: WHSE_BASEMAPPING.NTS_BC_CONTOUR_LINES_125M

***NEXT: ADD DATA*** takes you to the Add Data page where you upload or link your resource(s) and describe information about them.

------------------------------

### **Resources**
This page allows you to add the resources (data) to your metadata record.
#### BCGW Resources

The **Manage BCGW Resources** button will add the ability for users to custom download data from the BCGW if:
+ it is stored in the BCGW **and** 
+ they have permissions to access it **and**
+ the BCGW schema and object name (e.g, _schema.table_) has been added to the main page of the metadata record

1. Click the **Yes** button on the _Object is available, would you like to add the resource link?_ pop-up.
1. Fill in the following details, where the update cycle is the mandatory field:
	+ **Resource Description** is a detailed description of the resource.
	+ **Resource Update Cycle** describes how often the resource is updated.
	+ **Supplemental information**: Any additional relevant information about the resource can be included here.
	+ **Temporal Extent** If your dataset is temporal in nature, you may provide the relevant dates in this area
		+ **Beginning Date** is the start date for the preiod the data is captured for.
		+ **End Date** is the end date for the period the data is captured for. 
1. Click the **Save** button.
1. Click the **Finish** button on the _Successfully added._ pop-up.

Publicly visible datasets in the BCGW that are made available in iMapBC will also have WMS and KML links created and added to the metadata record. The addition of these resources is handled through an automated script.

### FILE AND URL RESOURCES

The **+Add New Resource** button allows you to upload a file that will be stored in the Catalogue Data Store, or use a link to your geographc dataset. If linking to a dataset, ensure it is in a location that is accessible for end-users.
+ **Upload File**: Select this to upload a a file, e.g., CSV, directly into the Catalogue Data Store.
+ **Link**: Select this to provide a link to a file stored elsewhere, e.g., a website or FTP site and enter the URL of the file.

### RESOURCE DETAILS

**Resource Name** is the name of the resource as it will appear on the metadata record. 

**Resource Description** is a detailed description of the resource.

**Resource Update Cycle** describes how often the resource is updated.

**Resource Stroage Format** describes the file extension for the resource.

**Resource Type** is the type of resource: Data, Reports or Abstraction.

**Resource Storage Location** is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**Resource Access Method** describes how the end-user can access the data.

**Supplemental information**: Any additional relevant information about the resource can be included here.

### **Temporal Extent** (optional)
If your dataset is temporal in nature, you may provide the relevant dates in this area

**Beginning Date** is the start date for the preiod the data is captured for.

**End Date** is the end date for the preiod the data is captured for. 

### Projection

**Projection Name** is the projection of your geographic data. Select from the drop-down list.

1. Click **Add** when done

Additional resources can be added by repeating the process above.

------------------------------

To complete the metadata in DRAFT status you can choose either:

1. **Finished** will save your metadata record for the dataset in DRAFT status or,

2. **Save and Add Another** will allow you to continue adding additional resources to the metadata record.

------------------------------
[RETURN TO TOP][1]

[RETURN TO DATA PUBLICATION WORKFLOWS > BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #data-publication-workflow---bc-data-catalogue---geographic-dataset

[2]: ./dpw_bcdc.md
