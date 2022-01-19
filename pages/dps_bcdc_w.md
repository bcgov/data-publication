---
layout: default
title: Publication Workflow
nav_order: 32
parent: BC Data Catalogue
has_children: false
has_toc: true
---

# **PUBLICATION WORKFLOW**
The BC Data Catalogue or Catalogue, as called throughout these documents, is intended for the Province of BC as well as Broader Public Sector organizations to publish metadata about their data holdings as well as applications or services. When data is published to the DataBC Program through any of its services, as well as published under the [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61), it must also have a metadata record in the BC Data Catalogue.  DataBC has well documented Data Standards and Guidelines that are followed throughout the process for metadata creation.  The workflows described below will guide you through what your responsibilities are as a publisher to the BC Data Catalogue, and how to create a metadata record in the BC Data Catalogue.

This page is written in the context that you have reviewed all information in the 'Documentation Review' section.

|**AUDIENCE**| | | | |
|:---|:---|:---|:---|:---|
|[*Data Publisher*](./glossary.md#data_publisher)|[*Custodian*](./glossary.md#custodian)|[*Data Manager*](./glossary.md#data_manager)|[*Data Steward*](./glossary.md#data_steward)|[*Metadata Editor*](./glossary.md#metadata_editor)|

## Table of Contents
+ [**DOCUMENTATION REVIEW**](#documentation-review)
+ [**WORKFLOW DIAGRAMS**](#workflow-diagrams)
+ [**HOW TO BECOME A PROVIDER TO THE CATALOGUE**](#how-to-become-a-provider-to-the-catalogue)
+ [**CREATING A METADATA RECORD**](#creating-a-metadata-record)
	+ [Metadata Requirements for Data and Maps in BC Map Hub (ArcGIS Online)](#metadata-requirements-for-data-and-maps-in-bc-map-hub-arcgis-online)
+ [**MANAGING METADATA RESOURCES**](#managing-metadata-resources)
	+ [Reordering Resources](#reordering-resources)
	+ [Editing Existing Resources](#editing-existing-resources)
	+ [Replacing an Existing Resource](#replacing-an-existing-resource)
	+ [Deleting an Existing Resource](#deleting-an-existing-resource)
+ [**METADATA MANAGEMENT AND MAINTENANCE**](#metadata-management-and-maintenance)
+ [**PUBLISHING A METADATA RECORD**](#publishinga-metadata-record)
+ [**ARCHIVING A METADATA RECORD**](#archivinga-metadata-record)
  
------------------------------

## DOCUMENTATION REVIEW

The first step in the process is to review the documentation: 
+ [BCDC Standards and Guidelines](./dsg_bcdc.html)
+ [Naming and Describing](./dsg_naming_describing.html)
+ [Open Data](./open_data.html)

[RETURN TO TOP][1]

------------------------------

## WORKFLOW DIAGRAMS

### [BCDC Metadata Readiness Workflow](./images/wf_MetadataReadiness.svg)
Wondering if you are ready to create metadata? This workflow guides you through the pre-work so you will be ready to create a metadata record.
![BCDC Metadata Readiness Workflow](./images/wf_MetadataReadiness.png)

### [BCDC Metadata Creation Workflow](./images/wf_MetadataCreation.svg)
Once you are ready, use the steps in this workflow to guide you through the process of creating a metadata record.
![BCDC Metadata Creation Workflow](./images/wf_MetadataCreation.png)

[RETURN TO TOP][1]

------------------------------

## PUBLICATION STATES

Metadata and data both follow a life cycle and thus the Catalogue allows for multiple sates

### Draft

![image](https://user-images.githubusercontent.com/32690119/150044352-48807ea7-f453-457c-b669-25faa3750dcb.png)

+ Creating a new record, this state is only selectable and visible.
+ It is also used:
    + When a administrator requires additional edits to be made by an editor and thus giving an editor the change to notify an administrator it is ready to publish again thourh the Pending Publih state.

**Visibility**: Only editors or adminstrators for a sub-organization can see these records.

### Pending Publish

![image](https://user-images.githubusercontent.com/32690119/150044272-83c2752e-5f54-4555-b537-42c7afa399fe.png)

**Visibility**: Only editors or adminstrators for a sub-organization can see these records.

###Published

![image](https://user-images.githubusercontent.com/32690119/150044206-9387636e-52ab-422d-8657-d20e9a54c0c7.png)

**Visibility**: 
   + Public - if Metadata Visibility set to Public.
   + IDIR - if Metadat Visibility set to IDIR

### Pending Archive

**Visibility**:
   
   + Public - if Metadata Visibility set to Public.
   + IDIR - if Metadat Visibility set to IDIR

## Archived

**Visibility**: Only editors or adminstrators for a sub-organization can see these records.

------------------------------

## HOW TO BECOME A PROVIDER TO THE CATALOGUE

This section has moved to BC Data Catalogue [Where to Start](./dps_bcdc_w_start.md

------------------------------

## CREATING A METADATA RECORD
_Note: To use the CKAN API for creating metadata, more information is available [here](./dps_bcdc_api_w_how_to_use.md)._

All new metadata records are created that allow the **State** to be set to **Draft**. 

1. Log into the [BC Data Catalogue](https://catalogue.data.gov.bc.ca) by clicking **Log In** on the upper right of the toolbar.
    + All users with an IDIR can log into the Catalogue but as an editor you will see **Add Dataset** in place of the **Log In** button.
1. Click the [**Add Dataset**] button.
1. Complete the [record](./glossary.md#record) details to describe what you are publishing and then you will be able to add different resource types after.
    + **NEW** This is a change from the previous Catalogue where you had to specify the Resource Type at the beginning. 
    + Follow the [Workflow](./dps_bcdc_w_record_mgmt_ui.md) to complete all mandatory/required fields (minimum requirement). 
    + We suggest adding content to non-mandatory fields as this will help people to better understand and use the data as intended.
	+ Suggestions for metadata content can be found in Tips & Tricks > [Making Useful Metadata](./tips_tricks_making_useful_metadata.md#making-useful-metadata). 
1. Click the [**Save**] button. 


### METADATA REQUIREMENTS FOR DATA AND MAPS IN BC MAP HUB (ARCGIS ONLINE)

The use of the BC Map Hub has a requirement for the creation of metadata alongside data and maps. The following documentation will assist in that process:
+ [Publication Request Form](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_public_publication_checklist.docx)
+ [Content Publication Guidelines](./dps_maphub_w.md#bcs-map-hub---arcgis-online-ago)

[RETURN TO TOP][1]

------------------------------

## MANAGING METADATA RESOURCES

Resources are the additional metadata specific to that resource as a record can have many resources.

1. Resources to a record can be the following types: Application, Geographic Data, Tabular Data/Document or Webservice/API.
1. Resources may reside, depending on type and size within the Catalogue database itself (Data Store (csv)/ File Store (xlsx) or be externally referenced.
1. At times resources are only metadata about a resource that is not accessible or requires authorization to access.
1. Resources that are sourced from the BC Geographic Warehouse are managed differently.
1. If a resources requires authorization, we recommend that a process or form is added as a resource to the record to inform users how to get access, e.g. [Request Archaeology Information](https://catalogue.data.gov.bc.ca/dataset/a6d58d20-8e19-46ba-b5a0-f02e436fa765/resource/cbbd35ea-8ddb-4cb4-b717-d897e5303dc3).

**To add a resource:**
1. Click the **+ Add Resource** button (![image](./images/image_add_resource.png)) on the toolbar at the record level.
1. Fill out all the required fields for each resource type as described for each of these resource types.

    - [Application](./dps_bcdc_w_resource_mgmt_ui.md#application)
    - [Document/Tabular Data](./dps_bcdc_w_resource_mgmt_ui.md#document-and-tabular-data)
    - [Geographic Data](./dps_bcdc_w_resource_mgmt_ui.md#geographic-data)
    - [Webservice/API](./dps_bcdc_w_resource_mgmt_ui.md#webservice-and-api)

_Notes:_
+ To use the CKAN API for managing resources, more information is available [here](./dps_bcdc_api_w_how_to_use.md)
+ Only files less than 150MB in size can be uploaded to the Catalogue file store.

### REORDERING RESOURCES
The **Reorder resources** button allows you to control the order of resources in the metadata record.
+ **TO BE CONFIGURED**

### EDITING EXISTING RESOURCES

There are two ways to edit a resource in the metadata record: 
1. On the resource card of the record page, click the pencil ![image](https://user-images.githubusercontent.com/32690119/118194859-f34e6b80-b3fe-11eb-9f72-13be9b382518.png) of the resource to edit.
1. On the resource page, click the **Edit Resource** button on the toolbar.

1. Make edits that follow the workflow for your dataset type under [Creating a New Metadata Record](#creating-a-metadata-record) above.
1. Click the **Save** button to save your changes.

### REPLACING AN EXISTING RESOURCE

While in edit mode on a resource (see [Editing Existing Resources](#EDITING-EXISTING-RESOURCES) section above):
1. Click the **Remove** button at the end of the **File** URL.
1. Re-upload or provide a new link to your data.
1. Make any other edits needed to reflect the updated/new resource.
1. Click **Update Resource** to save your changes.

### DELETING AN EXISTING RESOURCE
For records that are still in draft:
1. Click the **Delete** button on to the toolbar. 


[RETURN TO TOP][1]

------------------------------

## METADATA MANAGEMENT AND MAINTENANCE

Please review [BC Data Catalogue - Roles and Responsibilities](./dsg_bcdc_roles_responsibilities.md), which outlines the obligations for metadata management and maintenance. It is good practice for the Data Custodian (or designate) to complete regular metadata reviews to ensure currency and completeness for records published under their Branch/Division.

[RETURN TO TOP][1]

------------------------------

## PUBLISHING A METADATA RECORD

Once the metadata record and its resources are complete and ready for publication review, the editor edits the **State** by setting it to **Pending Publish**. 

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the "Edit Dataset" button on the top toolbar to start editing.
1. Scroll down to the State section
1. Click on the state button **Pending Publish**
1. Click **Save**.

Once a metadata record has been set to **Pending Publish**, administrators of the Catalogue at DataBC weill be notified and will then review the record for: 
+ Completeness
+ Data quality
+ Licence type

If your metadata record is validated by DataBC, they will change the state to **Published**.

Otherwise, a DataBC team member will contact you to discuss your record.

_**Note on Publication timing**: if there is a specific time and date that the release of these records is required, contact [DataBC DA](mailto:databc.da@gov.bc.ca) to work on timing that is withing regular government business hours, M-F 8:30 to 5pm._

Once your metadata record is in the Published state, it is visible and searchable in the BC Data Catalogue for all users, unless set to IDIR visibility.  Then a user must log into their IDIR to see the record.  

Data Custodians should regularly review all metadata records within their Sub-Org for currency and completeness. This may be delegated to any of the other Roles or the Editor associated with the metadata record.

[RETURN TO TOP][1]

------------------------------

## ARCHIVING A METADATA RECORD

When a dataset is no longer relevant, the **State** should be set to **Pending Archive**, so as to notify DataBC Catalogue administrators as well it informs uses who read the metadata that there is an intending Archive. Recommend following the items as there are more fields available to give users more information, e.g., what is the replacement dataset or record.

Here are the steps to begin this process:

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
1. Ensure the **Organization** and **Sub-Organization** are correct. If not, update these fields or contact  the [DataBC](mailto:data@gov.bc.ca) if you do not have editing access for the Sub-Org.
1. Under **Data Currency/Update**, update the **Resource Status**:
	1. If the data is **obsolete**, a link must be added for a **Replacement Record**.
		+ When this is another record in the catalogue: 
			+ Use the replacement record's permalink
			+ Add the text "DEPRECATED - " to the beginning of the metadata Title
		+ If there is no replacement, then either the main catalogue page can be used or a webpage about the data or program.
		
	1. If the data is going into **historicalArchive**, two additional fields can be completed:
		1. **Retention Expiry Date**
		1. **Source Data Path**
		
1.  Change the dataset **State**:
	+ from **Published**
	+ to **Pending Archive**.
	
Once the record has been set to **PENDING ARCHIVE**, DataBC will then review the record to ensure it is ready for archiving, this includes:	
+ for BCGW specific datasets:
    - removing the URL for the WMS Get Capabilities and the Network Link KML
    - changing the Title for BCGW Datasets to be "BCGW Deprecated Object"
        - This will disable the _Download/Access_ button. 
    - removing the preview details
        - this will disable the Preview button and the Link to iMapBC
+ for BC's MapHub specific datasets:
    - the corresponding data, app or map needs to be ideally deleted or at least unshared to public.
    - any maps are updated to remove reference to the ago hosted data being retired
+ confirming the correct Org and Sub-Org
+ confirming that records with a replacement dataset contain "DEPRECATED" in the title

_Note: If the record is related to a BCGW dataset, it will be added to the next Notice of Intent (NOI) for archival._
    - See the [BCGW Data Retirement Workflow](./dps_bcgw_w_data_retirement.md)

Once DataBC has confirmed the record is ready for archiving, they will update the **State** to **ARCHIVED**.

Archived datasets:
+ are only visible to logged in Catalogue members of the Sub-Org which the dataset resides in 

[RETURN TO TOP][1]


-------------------------------------------------------

[1]: #publication-workflow
