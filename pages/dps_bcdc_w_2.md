---
layout: default
title: Publication Workflow
nav_order: 
parent: BC Data Catalogue
has_children: true
has_toc: false
---

# BC DATA CATALOGUE PUBLICATION WORKFLOW

**This document is being update to correstpond with the BC Data Catalogue Beta release**

When data is published to the DataBC Program through any of its services, as well as published under the [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61) it must also have a metadata record in the BC Data Catalogue.  DataBC has well documented Data Standards and Guidelines that are followed throughout the process for metadata creation.  The workflows described below will guide you through what your reponsibilities are as a publisher to the BC Data Catalogue and how to create a metadata record in the BC Data Catalogue.

This page is written in the context that you have reviewed all information in the 'Documentation Review' section.

|**AUDIENCE**|  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|
| *Data Publishers* | *Data Custodians* | *Data Managers* | *Data Stewards* | *Metadata Editors* |

## Table of Contents
+ [**DOCUMENTATION REVIEW**](#documentation-review)
+ [**WORKFLOW DIAGRAMS**](#workflow-diagrams)
+ [**HOW TO BECOME A PROVIDER TO THE CATALOGUE**](#how-to-become-a-provider-to-the-catalogue)
+ [**CREATING A METADATA RECORD**](#creating-a-metadata-record)
	+ [METADATA REQUIREMENTS FOR DATA AND MAPS IN BC MAP HUB (ARCGIS ONLINE)](#metadata-requirements-for-data-and-maps-in-bc-map-hub-arcgis-online)
+ [**MANAGING METADATA RESOURCES**](#managing-metadata-resources)
	+ [REORDERING RESOURCES](#reordering-resources)
	+ [EDITING EXISTING RESOURCES](#editing-existing-resources)
	+ [REPLACING AN EXISTING RESOURCE](#replacing-an-existing-resource)
	+ [DELETING AN EXISTING RESOURCE](#deleting-an-existing-resource)
+ [**METADATA MANAGEMENT AND MAINTENANCE**](#metadata-management-and-maintenance)
+ [**PUBLISHING A METADATA RECORD**](#publishinga-metadata-record)
+ [**ARCHIVING A METADATA RECORD**](#archivinga-metadata-record)
+ [**METADATA GROUPS**](#metadata-groups)
+ [**ORGANIZATION AND SUB-ORGANIZATION UPDATES**](#organization-and-sub-organization-updates)
+ [**BULK UPDATES**](#bulk-updates)
  
------------------------------

## DOCUMENTATION REVIEW

The first step in the process is to review the documentation: 
+ [BCDC Standards and Guidelines](./dsg_bcdc.md)
+ [Naming and Describing](https://bcgov.github.io/data-publication/pages/dsg_naming_describing.html)
+ [Open Data](https://bcgov.github.io/data-publication/pages/open_data.html)

[RETURN TO TOP][1]

------------------------------

## WORKFLOW DIAGRAMS

### [BCDC Metadata Readiness Workflow](https://bcgov.github.io/data-publication/pages/images/wf_MetadataReadiness.svg)
Wondering if you are ready to create metadata? This workflow guides you through the pre-work so you will be ready to create a metadata record.
![BCDC Metadata Readiness Workflow](https://bcgov.github.io/data-publication/pages/images/wf_MetadataReadiness.svg)

### [BCDC Metadata Creation Workflow](https://bcgov.github.io/data-publication/pages/images/wf_MetadataCreation.svg)
Once you are ready, use the steps in this workflow to guide you through the process of creating a metadata record.
![BCDC Metadata Creation Workflow](https://bcgov.github.io/data-publication/pages/images/wf_MetadataCreation.svg)

[RETURN TO TOP][1]

------------------------------

## HOW TO BECOME A PROVIDER TO THE CATALOGUE

To become a Catalogue editor/publisher for a Sub-Organization (a Branch or Division), approval from the Data Custodian (Director or Executive Director) is required. Here are the steps to complete this, provide:

1. Approval from the Data Custodian to for publish and manage records and data on their behalf.
3. The name of the Ministry/Organization and Sub-Organization (as it appears in the Catalogue and if that needs to be renamed) in your email. 
4. All names and IDIRs for those requiring access.
5. Forward all this to [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) with the subject: "BCDC Editor Request". 
6. A Catalogue administrator will then add you as an editor to the Sub-Org and contact you with all relavant information to get you started as an Editor in the BC Data Catalogue.

Organizations in the Broader Public Sector (BPS) may publish metadata records and data to the Catalogue. 
+ For datasets licensed under Open Data, these organizations will require their own Open Government Licence. See [Licences](#Licences) section below for more information on this.  
+ Contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to discuss publishing your data to the Catalogue. 

[RETURN TO TOP][1]

------------------------------

## LICENCES

There are three licencing options for data published data in the BC Data Catalogue:

1. [Access Only](https://www2.gov.bc.ca/gov/content/home/copyright)
   
   Access only is a statement of use that is restrictive as defined in the Crown Copyright Page.
	+ “reproduction or distribution is not permitted without written permission.”
	+ A user is then required to request permission through the [IPP office form](https://forms.gov.bc.ca/copyright-permission-request) and does have a fee associated with it. 
1. [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61)
 
   For data that is under the Intelectual Property or "ownership of the Province of BC and meets all the requirements of being open data, it is recommended to publish data under an Open Government Licence, where possible, as it is much more permissive.

   To publish a dataset under OGL-BC, [follow the full steps here](https://bcgov.github.io/data-publication/pages/open_data.html) but in brief you will need to obtain the required authorizations as noted in the [Open Data Assessment and Checklist](https://www2.gov.bc.ca/assets/download/97CF56DB283D4AE08968E4A4C7538D65). These include:

	+ [The Ministry Information Security Officer (MISO)](https://intranet.gov.bc.ca/intranet/content?id=DC4623F6F1944065B83F70297ED419D7)
	+ [The Intellectual Properties Office (email)](mailto:QPIPPCopyright@gov.bc.ca)
	+ The Custodial organization’s Deputy Minister or designated alternate

	Once these approvals are in place, Data can be published under OGL-BC if:

	+ it is in an open format, e.g., CSV, Shape File (SHP), JSON, or additional formats noted by the OCIO’s [Open Data Physical Dataset Format Standard](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/open_data_physical_dataset_extract.pdf). 
	+ The Catalogue record links to the appropriate Open Data Licence.
	
1. [Open Government - (Other)](https://bcgov.github.io/data-publication/pages/open_data_licence_create.html)

	The Catalogue contains datasets licenced under many other Open Government Licences, from the Broader Public Sector to Federal licences.
	
	Federal Licences are listed as there are times when BC Government employees require data to be published for their own consumption via one or more channels.

	New licences can be added to the drop down.

[RETURN TO TOP][1]

------------------------------

## CREATING A METADATA RECORD
_Note: To use the CKAN API for creating metadata, more information is available [here](https://bcgov.github.io/data-publication/pages/dps_bcdc_w_api_dev_workflow.md)._

1. Log into the [BC Data Catalogue](https://catalogue.data.gov.bc.ca) by clicking **Log In** on the upper right of the toolbar.
    + All users with an IDIR can log into the Catalogue but as an editor you will see **Add Dataset** in place of the **Log In** button.
1. Click the [**Add Dataset**] button.
1. Complete the record details to describe what you are publishing and then you will be able to add different resource types after.
    + This is a change from the previous Catalogue where you had to specify the Resource Type at the begining. 
    + Follow the workflow link below for details on the specific fields for each dataset type.

        |Metadata Pages| |
        |:---|:---|
        |[Record](https://bcgov.github.io/data-publication/pages/glossary.html#record)|[Workflow](./dps_bcdc_content.md#add-record)|
        |[Application](https://bcgov.github.io/data-publication/pages/glossary.html#application)|[Workflow](./dps_bcdc_content.md#add-application-resource)|
        |[Dataset](https://bcgov.github.io/data-publication/pages/glossary.html#dataset)|[Workflow](./dps_bcdc_content.md#add-tabular-or-document-resource)|
        |[Geographic Dataset](https://bcgov.github.io/data-publication/pages/glossary.html#geographic_dataset)|[Workflow](./dps_bcdc_content.md##add-geographic-data-resource)|
        |[Web Service - API](https://bcgov.github.io/data-publication/pages/glossary.html#webservice_api)|[Workflow](./dps_bcdc_content.md#add-weservice-or-api-resource)|

1.  Click the **Add Dataset** button.

1. Complete all mandatory fields (minimum requirement). We suggest adding content to non-mandatory fields as this will help people to better understand and use the data as intended.
	+ Suggestions for metadata content can be found in Tips & Tricks > [Making Useful Metadata](https://bcgov.github.io/data-publication/pages/tips_tricks_making_useful_metadata.html). 

### METADATA REQUIREMENTS FOR DATA AND MAPS IN BC MAP HUB (ARCGIS ONLINE)

The use of the BC Map Hub has a requirement for the creation of metadata alongside data and maps. The following documentation will assist in that process:
+ [Publication Request Form](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_public_publication_checklist.docx)
+ [Content Publication Guidelines](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_metadata_and_presentation_guidelines_20180809.docx)
+ [Tips and Tricks](https://www2.gov.bc.ca/assets/download/FC1CCC3FAC1D4ECE8557E44F54B1C3BC)

[RETURN TO TOP][1]

------------------------------

## MANAGING METADATA RESOURCES

Resources are the data in the metadata record and are added to the record to provide users with access to your data.

For details on how to add resources, see the workflow for your dataset type in the [Creating a Metadata Record](#CREATING-A-METADATA-RECORD) section above.

_Notes:_
+ To use the CKAN API for managing resources, more information is available [here](./dps_bcdc_w_api_dev_workflow.md)
+ Only files less than 150MB in size can be uploaded to the Catalogue.
+ If the file is less than 150MB limit we recommend uploading the file to the Catalogue vs. storing the data elsewhere.

### REORDERING RESOURCES
The **Reorder resources** button allows you to control the order of resources in the metadata record.
+ **TO BE CONFIGURED**

### EDITING EXISTING RESOURCES

There are two ways to edit a resource in the metadata record: 
1. On the resource card of the record page, click the pencil ![image](https://user-images.githubusercontent.com/32690119/118194859-f34e6b80-b3fe-11eb-9f72-13be9b382518.png) of the resource to edit.
1. On the resource page, click the **Edit Resource** button on the toolbar.

1. Make edits that follow the workflow for your dataset type under [Creating a New Metadata Record](#CREATING-A-NEW-METADATA-RECORD).
1. Click the **Save** button to save your changes.

### REPLACING AN EXISTING RESOURCE

While in edit mode on a resource (see [Editing Exisitng Resources](#EDITING-EXISTING-RESOURCES) section above):
1. Click the **Remove** button at the end of the **File** URL.
1. Re-upload or provide a new link to your data.
1. Make any other edits needed to reflect the updated/new resource.
1. Click **Update Resource** to save your changes.

### DELETING AN EXISTING RESOURCE
While in edit mode on a resource (see [Editing Exisitng Resources](#EDITING-EXISTING-RESOURCES) section above):
1. Click the **Delete** button at the bottom of the page. 

[RETURN TO TOP][1]

------------------------------

## METADATA MANAGEMENT AND MAINTENANCE

Please review [BC Data Catalogue - Roles and Responsibilities](./dsg_bcdc_roles_responsibilities.md), which outlines the obligations for metadata management and maintenance. It is good practice for the Data Custodain (or designate) to complete regular metadata reviews to ensure currency and completeness for records published under their Branch/Division.

[RETURN TO TOP][1]

------------------------------

## PUBLISHING A METADATA RECORD

All new metadata records are created in the DRAFT record state.

Once the metadata record is complete, the editor sets the **Record State** to **Pending Publish**. Here are the steps:

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
1. Change the dataset **Record State**(first metadata element):
	+ from **DRAFT**
	+ to **PENDING PUBLISH**
1. Click **Update Dataset**.

Once a metadata record has been set to **PENDING PUBLISH**, the DataBC is notified and will then review the record for: 
+ Completeness
+ Data quality
+ Licence type

If your metadata record is validated by DataBC, they will change the state to **PUBLSHED**.  Otherwise, a DataBC team member will contact you to discuss your record.

_**Note on Publication timing**: if there is a specific time and date that the release of these records is required, contact [DataBC](mailto:data@gov.bc.ca) to work on timing that is withing regular government business hours, M-F 8:30 to 5pm._

Once your metadata record is in the Published state, it is then visible and searchable in the BC Data Catalogue for all users.  

Data Custodians should regularly reivew all metadata records within ther Sub-Org for currency and completeness. This may be delegated to any of the other Roles or the Editor associated with the metadata record.

[RETURN TO TOP][1]

------------------------------

## ARCHIVING A METADATA RECORD

When a dataset is no longer relevant, it should be archived. Here are the steps to begin this process:

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
1. Ensure the **Organization** and **Sub-Organization** are correct. If not, update these fields or contact  the [DataBC](mailto:data@gov.bc.ca) if you do not have editing access for the Sub-Org.
1. Under **Data Currency/Update**, update the **Resource Status**:
	1. If the data is **obsolete**, a link must be added for a **Replacement Record**.
		+ When this is another record in the catalogue: 
			+ Use the replacement record's permalink
			+ Add the text "DEPRECATED - " to the beginning of the metadata Title
		+ If there is no replacement, then either the main catalogue page can be used or a webpage about the data or program.
		
	1. If the data is going into **historicalArchive**, two additional fields must be completed:
		1. **Retention Expiry Date**
		1. **Source Data Path**
		
1.  Change the dataset **Record State**:
	+ from **PUBLISHED**
	+ to **PENDING ARCHIVE**.
	
Once the record has been set to **PENDING ARCHIVE**, DataBC will then reivew the record to ensure it is ready for archiving, this includes:	
+ removing all resources from the record
+ confirming the correct Org and Sub-Org
+ confirming that records with a replacement dataset contain "DEPRECATED" in the title

_Note: If the record is related to a BCGW dataset, it will be added to the next Notice of Intent (NOI) for archival._

Once DataBC has confirmed the record is ready for archiving, they will update the **Record State** to **ARCHIVED**.

Archived datasets:
+ are only visible to logged in Catalogue members of the Sub-Org which the dataset resides in 
+ do not contain resources

[RETURN TO TOP][1]

------------------------------

## METADATA GROUPS

Metadata Groups provide a listing of like datasets for a specific purpose and can contain records from across multiple organizations.
+ These are not intended to replace a full listing of records for an sub-organization.
+ Groups by default are public but a request them to be visible to IDIR only can be made.

To create a group, the following information is required and can be sent to [DataBC](mailto:data@gov.bc.ca).

**Requirements:**
+ **Group Name**:
+ **Group Description**:
+ **URL**: _for more information_
+ **Image**: _either a file or url_
+ **Members**: _list of IDIRs who will maintain the Group_
+ **Group visibility**: Public or IDIR

[RETURN TO TOP][1]

------------------------------

## ORGANIZATION AND SUB-ORGANIZATION UPDATES
Organizations change names frequently and thus need continual maintenance.

If a Organization/Ministry or Sub-organization/Branch/Division/Program has changed names, the following can be following information can be sent to [DataBC](mailto:data@gov.bc.ca):

+ Old name
+ New name
+ List of data providers (Editors)
	+ When an update is requested for a sub-organization we ask that the members and contacts list be reviewed.
	+ DataBC can provide you with a current list to review.

[RETURN TO TOP][1]

------------------------------

## BULK UPDATES
When there are more than 20 records that require updating, a bulk update can be requested for [DataBC](mailto:data@gov.bc.ca) to complete or can be completed by a user via the API.

+ Common bulk updates:
	+ Branch/Division names
	+ Contact information
	+ State Change
	+ URL modifications for More Info and Resources

[RETURN TO TOP][1]

-------------------------------------------------------

[1]: #bc-data-catalogue-publication-workflow
