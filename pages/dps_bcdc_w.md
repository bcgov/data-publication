---
layout: default
title: Publication Workflow
nav_order: 32
parent: BC Data Catalogue
has_children: false
has_toc: true
---

# **BC Data Catalogue Publication workflow**
The BC Data Catalogue or Catalogue, as called throughout these documents, is intended for the Province of BC as well as Broader Public Sector organizations to publish metadata about their data holdings as well as applications or services. When data is published to the DataBC Program through any of its services, as well as published under the [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61), it must also have a metadata record in the BC Data Catalogue.  DataBC has well documented Data Standards and Guidelines that are followed throughout the process for metadata creation.  The workflows described below will guide you through what your responsibilities are as a publisher to the BC Data Catalogue, and how to create a metadata record in the BC Data Catalogue.

This page is written in the context that you have reviewed all information in the 'Documentation Review' section.

| | |**Audience** | | |
|:---|:---|:---|:---|:---|
|[*Data Publisher*](./glossary.md#data_publisher)|[*Custodian*](./glossary.md#custodian)|[*Data Manager*](./glossary.md#data_manager)|[*Data Steward*](./glossary.md#data_steward)|[*Catalogue Editor*](./glossary.md#metadata_editor)|

## Table of Contents
+ [**Documentation Review**](#documentation-review)
+ [**How to become a Provider to the Catalogue**](#how-to-become-a-provider-to-the-catalogue)
+ [**What data Licence to use?**](#what-data-licence-to-use)
+ [**Creation and Publication workflow diagram**](#creation-and-publication-workflow-diagram)
+ [**Publication states**](#publication-states)
+ [**Managing Records**](#managing-records)
+ [**Managing Resources**](#managing-resources)
+ [**Publishing Records**](#publishing-records)
+ [**Archiving Records**](#archiving-records)
  
------------------------------

## Documentation Review

The first step in the process is to review the documentation: 
+ [BCDC Standards and Guidelines](./dsg_bcdc.html)
+ [Naming and Describing](./dsg_naming_describing.html)
+ [Open Data](./open_data.html)
+ [BC Data Catalogue - Roles and Responsibilities](./dsg_bcdc_roles_responsibilities.md)
    - which outlines the obligations for metadata management and maintenance. It is good practice for the Data Custodian (or designate) to complete regular metadata reviews to ensure currency and completeness for records published under their Branch/Division.**** 

------------------------------

## How to become a Provider to the Catalogue

This section has moved to BC Data Catalogue [Where to Start](./dps_bcdc_w_start.md#how-to-become-a-provider-to-the-catalogue)

------------------------------

## What data Licence to use?

Every dataset needs to define a licence or use statement. 

This section moved to [Licences](./dps_licences.md) and see licening options in the [FAQ](./faq.md#data-publication-licensing-options---open-dataaccess-only).

------------------------------

## Creation and Publication workflow diagram

### [BCDC Metadata Creation and Publication Workflow](./images/wf_MetadataCreation.svg)
Once you are ready, use the steps in this workflow to guide you through the process of creating a metadata record.
[![BCDC Metadata Creation Workflow](./images/wf_MetadataCreation.png)](./images/wf_MetadataCreation.svg) 

[RETURN TO TOP][1]

------------------------------

## Publication states

Metadata and data both follow a life cycle and thus the Catalogue allows for multiple states.

| Publication States|Draft|Pending Publish|Published|Pending Archive|Archvied|
|:---|:---:|:---:|:---:|:---:|:---:|
| | ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) **->**|**<-** ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) **->**|**<-** ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) **->**|**<-** ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) **->**|**<-** ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png)|
|**Who sets state:**|Editor or Admin|Editor or Admin|Admin only|Editor or Admin|Admin Only|
|**Notifications:**|None|Email to Admin|Email to Editors|Email to Admin|Email to Editors|
|**Visibility**|Org Editors or <br> Adminstrators|Org Editors or <br> Adminstrators|Public or IDIR*|Public or IDIR*|Org Editors or <br> Adminstrators

\* If Public or IDIR is dependent on what is selected for record visibility in the field _Who can view this record?_

[RETURN TO TOP][1]

------------------------------

## Managing Records

* New records are created in a Draft state.
* A record in any state can be edited.
* Editors can only deleted records in a state of Draft.
* Admins can delete records in any state.

For record creation and managmenent throught the 
* **User interface (UI)**: [Record management](./dps_bcdc_w_record_mgmt_ui.md)
* **API**: [API Record managment](./dps_bcdc_api_w_record_mgmt.md)

[RETURN TO TOP][1]

------------------------------

## Managing Resources

* Resources can be added, edited or deleted in any state.

* **User interface (UI)**: [Resource management](./dps_bcdc_w_record_mgmt_ui.md)
* **API**: [API Resource Managment](./dps_bcdc_api_w_resource_mgmt.md)

[RETURN TO TOP][1]

------------------------------

## Publishing Records

Once the metadata record and its resources are complete and ready for publication review, the editor edits the **State** by setting it to **Pending Publish**.

**To change the state of a record:**

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the **Edit Dataset** button on the top toolbar to start editing.
1. Scroll down to the **State** section
1. Click on the state button ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) above **Pending Publish** which will turn it into the checkmark.
1. Click **Save**.

**Review by an administrator:**
1. Once a metadata record has been set to **Pending Publish**, administrators of the Catalogue at DataBC weill be notified and will then review the record for: 
    + Completeness
    + Data quality
    + Licence type
1. If your metadata record is validated by DataBC, they will change the state to **Published**.
1. If you metadata record needs some work, a DataBC team member will change the state back to **Draft** and contact you to discuss your record.

**_Notes_**
* **Publication timing**: if there is a specific time and date that the release of these records is required and not already working with someone at DataBC as part of the release please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) to work on timing that is withing regular government business hours, M-F 8:30 to 5pm._

* See the the different [Publication States](#publication-states) for notifications and visibility to users.
 
* Once your metadata record is in the Published state, it is visible and searchable in the BC Data Catalogue for all users, unless set to IDIR visibility.  Then a user must log into their IDIR to see the record.  

* Data Custodians should regularly review all metadata records within their Sub-Org for currency and completeness. This may be delegated to any of the other Roles or the Editor associated with the metadata record.


[RETURN TO TOP][1]

------------------------------

## Archiving Records

When a dataset is no longer relevant, the **State** should be set to **Pending Archive**, so as to notify DataBC Catalogue administrators as well it informs uses who read the metadata that there is an intending Archive. Recommend following the items as there are more fields available to give users more information, e.g., what is the replacement dataset or record.

**Here are the steps to begin this process:**

1. Log into the Catalogue.
1. Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
1. Ensure the **Organization** and **Sub-Organization** are correct. 
    + If not, update these fields or please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) if you do not have editing access for the Sub-Org.
3. Under **Data Currency/Update**, update the **Resource Status**:
	1. If the data is **obsolete**, a link must be added for a **Replacement Record**.
		+ When this is another record in the catalogue: 
			+ Use the replacement record's permalink
			+ Add the text "DEPRECATED - " to the beginning of the metadata Title
		+ If there is no replacement, then either the main catalogue page can be used or a webpage about the data or program.
		
	1. If the data is going into **historicalArchive**, two additional fields can be completed:
		1. **Retention Expiry Date**
		1. **Source Data Path**
		
1.  Change the dataset **State**:
	+ by clicking the state button above ![image](https://user-images.githubusercontent.com/32690119/150053047-9afbf52a-ddbf-4374-9c05-c27464db2637.png) **Pending Archive**. The state selected will be the one with the checkmark.
	
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
