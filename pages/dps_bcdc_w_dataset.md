---
layout: default
title: Dataset
nav_order: 124
parent: Publication Workflow
grand_parent: BC Data Catalogue
padding: 1rem
has_toc: false
---

## PUBLISHING A DATASET TO THE BC DATA CATALOGUE

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

**More info**: Provide links to related web pages.

**Keywords**: These are the searchable terms for the metadata record. Enter meaningful keywords here. Think of what users may use for search terms to find the dataset in the Catalogue.

---------------

### **Contacts**

Add contacts for the following **Roles**:
1. [Custodian](./glossary.md/#data_custodian) (required) 
1. [Point of Contact](./glossary.md/#point_of_contact) (required) 
1. [Business Expert](./glossary.md/#business_expert) (optional)
1. [Distributor](./glossary.md/#distributor) (optional) 

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

---------------

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

**License** describes the license the data is being published under. See [Licenses](./dps_bcdc_w.md#licenses) section for more info.

**Security Classification**

|BCDC Security Classication| [Information Security Classification Levels](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)| Description
|:---|:---|:---|
|High - Cabinet, High - Confidential, High - Sensitivity|Protected C | Extremely grave harm to an individual, organization or government. Examples: Information about police agents and other informants, Cabinet records or Cabinet-related records
|Medium - Personal, Medium - Sensitivity|Protected B | Serious harm to an individual, organization or government. Examples: Law enforcement and medical records, personnel evaluations and investigations, financial records, information subject to solicitor-client privilege or other legal privilege
|Low - Sensitivity|Protected A | Harm to an individual, organization or government. Examples: Home addresses, dates of birth, other low-risk personal information
|Low - Public|Public|No harm to an individual, organization or government. Examples: Job postings, communications to claim clerks, business contact information, research and background papers (without copyright restrictions)

------------------------------

***NEXT: ADD DATA*** takes you to the Add Data page where you upload or link your resource(s) and describe information about them.

------------------------------

### **Add Data**

**File**:
You can either upload a file that will be stored in the Catalogue Data Store, or use a link to your dataset. If linking to a dataset, ensure it is in a location that is accessible for end-users.

+ **Upload File**: Select this to upload a resource to the Catalogue Data Store.

+ **Link**: Enter the URL of your dataset here.

**Resource Name** is the name of the resource as it will appear on the metadata record. 

**Resource Description** is a detailed description of the resource.

**Resource Update Cycle** describes how often the resource is updated.

**Resource Stroage Format** describes the file extension for the resource.

**Resource Type** is the type of resource: Data, Reports or Abstraction.

**Resource Storage Location** is the location where the resource is stored. For files that have been uploaded using the _Upload File_ above, choose Catalogue Data Store.

**Resource Access Method** describes how the end-user can access the data.

**Supplemental information**: Any additional relevant information about the resource can be included here.

------------------------------

### **Temporal Extent** (optional)
If your dataset is temporal in nature, you may provide the relevant dates in this area

**Beginning Date** is the start date for the preiod the data is captured for.

**End Date** is the end date for the preiod the data is captured for. 

------------------------------

To complete the metadata in DRAFT status you can choose either:

1. **Finished** will save your metadata record for the dataset in DRAFT status or,

2. **Save and Add Another** will allow you to continue adding additional resources to the metadata record.

------------------------------

[RETURN TO TOP][1]

[RETURN TO DATA PUBLICATION WORKFLOW > BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #publishing-a-dataset-to-the-bc-data-catalogue
[2]: ./dps_bcdc_w.md

