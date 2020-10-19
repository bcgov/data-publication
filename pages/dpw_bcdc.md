---
layout: default
title: Data Publication Workflow - BC Data Catalogue
nav_order: 30
parent: Data Publication Workflows
has_toc: false
---

# DATA PUBLICATION WORKFLOW - BC DATA CATALOGUE (BCDC)

# PURPOSE

This page describes the client workflow for creating metadata in the BC Data Catalogue (BCDC).  

-----------------------

# AUDIENCE

The intended audiences for this page are:
+ clients that are publishing data to the DataBC Program, through any service
+ Data Custodians, Data Managers, Data Stewards, metadata editors


For a description of the roles and responsibilities of the business functions defined in this section, please refer to [_Data Publication: Roles and Responsibilities_](roles_and_responsibilities.md#data-publication-roles-and-responsibilities).

-----------------------

## Table of Contents
+ [**INTRODUCTION**](#introduction)
+ [**DOCUMENTATION REVIEW**](#documentation-review)
+ [**WORKFLOW DIAGRAM - METADATA READINESS**](#workflow-diagram---metadata-readiness)
+ [**WORKFLOW DIAGRAM - METADATA CREATION**](#workflow-diagram---metadata-creation)
+ [**HOW TO BECOME A PROVIDER TO THE CATALOGUE**](#how-to-become-a-provider-to-the-catalogue)
+ [**LICENSES**](#licenses)
+ [**CREATING A NEW METADATA RECORD**](#creating-a-new-metadata-record)
+ [**MANAGING METADATA RESOURCES**](#managing-metadata-resources)
	+ [BCGW RESOURCES](#bcgw-resources)
	+ [FILE AND URL RESOURCES](#file-and-url-resources)
	+ [REORDERING RESOURCES](#reordering-resources)
	+ [EDITING EXISTING RESOURCES](#editing-existing-resources)
	+ [REPLACING AN EXISTING RESOURCE](#replacing-an-existing-resource)
	+ [DELETING AN EXISTING RESOURCE](#deleting-an-existing-resource)
+ [**METADATA MANAGEMENT AND MAINTENACE**](#metadata-management-and-maintenance)
  
---------------------------

## INTRODUCTION

When data is published to the the DataBC Program through any of its services, it must also have a metadata record in the BC Data Catalogue.  DataBC has well documented Data Standards and Guidelines that are followed throughout the process for metadata creation.  The workflows described below will guide you through what your reponsibilities are as a publisher to the BC Data Catalogue and how to create a metadata record in the BC Data Catalogue.

This page is written in the context that you have reviewed all information in the 'Documentation Review' section.

[RETURN TO TOP][1]
<div style="text-align: right"> [RETURN TO TOP][1] </div>
------------------------------

## DOCUMENTATION REVIEW

The first step in the process is to review the documentation: 
+ Data Governance > [A Guide for Data Custodaians and Data Managers](https://bcgov.github.io/data-publication/pages/a_guide_for_data_custodians_and_data_managers.html#a-guide-for-data-custodians-and-data-managers)
+ [Open Data](https://bcgov.github.io/data-publication/pages/open_data.html)
+ Standards and Guidelines > [Metadata Standards](https://bcgov.github.io/data-publication/pages/metadata_standards.html)
+ Standards and Guidelines > Naming and Describing > [BC Data Catalogue Naming Guidelines](https://bcgov.github.io/data-publication/pages/naming_and_describing.html#bc-data-catalogue-naming-guidelines)
+ Standards and Guidelines > Naming and Describing > [BC Data Catalogue Content and Describing Guidelines](https://bcgov.github.io/data-publication/pages/naming_and_describing.html#bc-data-catalogue-content-and-describing-guidelines)
+ Standards and Guidelines > [File Content/Structure Best Practices](https://bcgov.github.io/data-publication/pages/file_content_and_structure_best_practices.html)

[RETURN TO TOP][1]

------------------------------

## WORKFLOW DIAGRAM - AM I READY TO CREATE METADATA?

![BCBC Metadata Readiness Workflow](images/wf_MetadataReadiness.png)

[RETURN TO TOP][1]

------------------------------

## WORKFLOW DIAGRAM - METADATA CREATION

![BCDC Metadata Creation Workflow](images/wf_MetadataCreation.png)

[RETURN TO TOP][1]

------------------------------

## HOW TO BECOME A PROVIDER TO THE CATALOGUE

To become a Catalogue editor/publisher for a Sub-Organization (a Branch or Division), approval from the Data Custodian (Director or Executive Director) is required. Here are the steps to complete this:

1. Contact the Data Custodian to request approval for publishing/editing privileges in the Sub-Org. Be sure to note the Orgnization and Sub-Organization (as it appears in the Catalogue) in your email. If more than one person requires editing access, include them in the request as well.
1. Once approval is received from the Custodian, forward the email including ther response to [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) with the subject: "BCDC Editor Request". 
1. A Catalogue administrator will then add you as an editor to the Sub-Org and contact you with all relavant information to get you started as an Editor in the BC Data Catalogue.

Organizations in the Broader Public Sector (BPS) may publish metadata records and data to the Catalogue. 
+ For datasets licensed under Open Data, these organizations will require their own Open Government Licence. See [Licenses](#Licenses) section below for more information on this.  
+ Contact [DataBC.DA](mailto:DataBC.DA@gov.bc.ca) to discuss publishing your data to the Catalogue. 

[RETURN TO TOP][1]

------------------------------

 ## <a name="licenses">LICENCES</a>

There are three licensing options for data published in the BC Data Catalogue:

1. [Access Only](https://www2.gov.bc.ca/gov/content/home/copyright)
   
   Access only is the standard and is a statement of use that is restrictive as defined in the [Crown Copyright Page](https://www2.gov.bc.ca/gov/content/home/copyright).
	+ “reproduction is not permitted without written permission.”
	+ A user is then required to request permission through the [IPP office form](https://forms.gov.bc.ca/copyright-permission-request) and does have a fee associated with it. 
1. [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc)
 
   It is recommended to publish data under an Open Government Licence, where possible, as it is much more permissive.  Some tools require this license to be applied, like Shiny.

   To publish a dataset under OGL-BC you will need to obtain the required authorizations as noted in the [Open Data Assessment and Checklist](https://www2.gov.bc.ca/assets/gov/data/open-data/open_data_assessment_and_checklist.docx). These include:

	+ [The Ministry Information Security Officer (MISO)](https://intranet.gov.bc.ca/intranet/content?id=DC4623F6F1944065B83F70297ED419D7)
	+ [The Intellectual Properties Office (email)](mailto:QPIPPCopyright@gov.bc.ca)
	+ The Custodial organization’s Deputy Minister or designated alternate

	Once these approvals are in place, Data can be published under OGL-BC if:

	+ it is in an open format, e.g., CSV, Shape File (SHP), JSON, or additional formats noted by the OCIO’s [Open Data Physical Dataset Format Standard](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/open_data_physical_dataset_extract.pdf). 
	+ The Catalogue record links to the appropriate Open Data Licence.
	
1. <a href="./dpw_bcdc_open_govt_licence_other.md">Open Government - (Other)</a>

	The Catalogue contains datasets licenced under many other Open Government Licences, from the Broader Public Sector to Federal licences.

	Federal Licences are listed as there are times when BC Government employees require data to be published for their own consumption via one or more channels.

[RETURN TO TOP][1]

------------------------------

## CREATING A NEW METADATA RECORD
_Note: To use the CKAN API for creating metadata, more information is available [here](https://bcgov.github.io/data-publication/pages/pages/bcdc_api_dev_workflow.md)._

1. Click the **Log in** button the upper right to log into the [BC Data Catalogue](https://catalogue.data.gov.bc.ca/dataset). This will take you to your dashboard. 
1. Click the **Datasets** button on the toolbar or navigate to [Datasets](https://catalogue.data.gov.bc.ca/dataset) page.
1. Click the [**Add Dataset**](https://catalogue.data.gov.bc.ca/dataset/add) button.
1. Choose a dataset type from one of the four types available that best fits your data, service or application.
1. Follow the workflow link for details on the specific fields for each dataset type.

|Dataset Type| |
|:---|:---|
|<a href="./glossary.md/#application">Application</a>|<a href="./dpw_bcdc_applications.md">Workflow</a>|
|<a href="./glossary.md/#dataset">Dataset</a>|<a href="./dpw_bcdc_dataset.md">Workflow</a>|
|<a href="./glossary.md/#geographic_dataset">Geographic Dataset</a>|<a href="./dpw_bcdc_geographic_dataset.md">Workflow</a>|
|<a href="./glossary.md/#webservice_api">Web Service - API</a>|<a href="./dpw_bcdc_webservice_api.md">Workflow</a>|


1.  Click the **Create Dataset** button.

1. Complete all mandatory fields (minimum requirement). Adding content to non-mandatory fields will help people to better understand and use the data (suggested).
	+ Suggestions for metadata content can be found in [How to best fill in metadata](HOW-TO-BEST-FILL-IN-METADATA). 

[RETURN TO TOP][1]

------------------------------

## MANAGING METADATA RESOURCES
Resources are the data in the metadata record and are added to the record to provide users with access to your data.

To add or manage Resources:

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record. 
	+ The "Edit Metadata" allows for the editing of all content.
1. Click the **Resources** tab.

### BCGW RESOURCES

The **Manage BCGW Resources** button will add the ability for users to custom download data from the BCGW if:
+ it is stored in the BCGW **and** 
+ they have permissions to access it **and**
+ the BCGW schema and object name (e.g, _schema.table_) has been added to the main page of the metadata record

1. Click the **Yes** button on the _Object is available, would you like to add the resource link?_ pop-up.
1. Fill in the following details, where the update cycle is the mandatory field:
	+ **Resource Description**
	+ **Resource Update Cycle**
	+ **Beginning Date**
	+ **End Date**
1. Click the **Save** button.
1. Click the **Finish** button on the _Successfully added._ pop-up.

Publicly visible datasets in the BCGW that are made available in iMapBC will also have WMS and KML created. The addition of these resources is handled through an automated script.

### FILE AND URL RESOURCES
The **+Add New Resource** button allows you to add a new resource to your metadata record.
1. Complete the required fields
1. Upload or provide a link to your data and provide information about the data resource.
	+ **Upload**: To upload a file, e.g., CSV, directly into the Catalogue, click the **Upload** button and select the file to upload from your local computer.
	+ **Link**: To link to a file stored elsewhere, e.g., a website or FTP site, click the **Link** button and enter the URL of the file.
1. Click **Add** when done

Additional resources can be added by repeating the process above.
			
**Notes:** 	
+ **Only files less than 150MB in size can be uploaded to the Catalogue.**
+ **If the file is less than 150MB limit we recommend uploading the file to the Catalogue vs. storing the data elsewhere.**

### REORDERING RESOURCES
The **Reorder resources** button allows you to control the order of resources in the metadata record.


### EDITING EXISTING RESOURCES

There are two ways to edit a resource in the metadata record: 
+ Using the 'wrench' icon > click the **Resources** tab
+ Using the **Explore** button on the main page:
	+ Click the **Explore** drop down button
	+ Click the **Edit** option to edit the resource

1. Make edits that follow the recommendations outlined in the [creating a record section](pages.metadata_providers_guide.md#HOW-TO-CREATE-A-NEW-METADATA-RECORD).
1. Click the **Update Resource** button to save your changes.

### REPLACING AN EXISTING RESOURCE

While in edit mode on a resource (see [Editing Exisitng Resources](#EDITING-EXISTING-RESOURCES) section above:
1. Click the **Remove** button at the end of the **File** URL.
1. Re-upload or provide a new link to your data.
1. Make any other edits needed to reflect the updated/new resource.
1. Click **Update Resource** to save your changes.

### DELETING AN EXISTING RESOURCE
While in edit mode on a resource (see [Editing Exisitng Resources](#EDITING-EXISTING-RESOURCES) section above::
1. Click the **Delete** button at the bottom of the page. 

[RETURN TO TOP][1]

------------------------------

## METADATA MANAGEMENT AND MAINTENANCE

Please review [A Guide for Data Custodians and Data Managers](https://bcgov.github.io/data-publication/pages/a_guide_for_data_custodians_and_data_managers.html), which outlines the obligations for metadata management and maintenance. It is good practice for the Data Custodain to complete a regular reviews to ensure currency and completeness for metadata records published under their Branch/Division.

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > DATA PUBLICATION PROCESS][2]

-------------------------------------------------------

[1]: #data-publication-workflow---bc-data-catalogue-(BCDC)
[2]: ../index.md#data-publication-process
