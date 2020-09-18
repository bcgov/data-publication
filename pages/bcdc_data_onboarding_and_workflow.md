# PUBLISHING METADATA AND DATA TO THE BC DATA CATALOGUE

This document provides a set of standards, guidelines, and procedures around loading and maintaining data to be served out by the BC Data Catalogue (BCDC), hereafter known as 'the Catalogue', under the DataBC Program:

Other DataBC Data Publication Platforms:
+ [_The BC Geographic Warehouse (BCGW)_](https://www2.gov.bc.ca/gov/content?id=18B291A12B4F42EA98169892F4B46D61)
+ [_BC Map Hub (ArcGIS Online)_](https://www2.gov.bc.ca/gov/content?id=DE0602BB42664AA28C9F059D45CC1CC2)
   
-----------------------
## Table of Contents
+ [**HOW TO BECOME A PROVIDER TO THE CATALOGUE**](#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE)
+ [**WHICH LICENCE TO USE**](#WHICH-LICENCE-TO-USE)
	+ [Access Only](#Access-Only)
	+ [Open Government Licence - British Columbia](#Open-Government-Licence---British-Columbia)
	+ [Other Open Government Licences](#Other-Open-Government-Licences)
		+ [Creating an Open Government Licence](#Creating-an-Open-Government-Licence)
+ [**HOW TO CREATE A NEW METADATA RECORD**](#HOW-TO-CREATE-A-NEW-METADATA-RECORD)
+ [**HOW TO MANAGE METADATA RECORD RESOURCES**](#HOW-TO-MANAGE-METADATA-RECORD-RESOURCES)
	+ [Adding a new resource](#Adding-a-new-resource)
		+ [Adding a BCGW resource](#Adding-a-BCGW-resource)
		+ [Automated BCGW WMS and KML resources](#Automated-BCGW-WMS-and-KML-resources)
	+ [Editing the properties of an existing resource](#Editing-the-properties-of-an-existingresource)
	+ [Replacing an existing resource](#Replacing-an-existing-resource)
	+ [Deleting an existing resource](#Deleting-an-existingresource)
+ [**HOW TO PUBLISH A METADATA RECORD**](#HOW-TO-PUBLISHA-METADATA-RECORD)
+ [**HOW TO ARCHIVE A METADATA RECORD**](#HOW-TO-ARCHIVEA-METADATA-RECORD)
+ [**PUBLISHING METADATA REQUIREMENTS FOR DATA AND MAPS IN BC MAP HUB (ARCGIS ONLINE)**](#PUBLISHING-METADATA-REQUIREMENTS-FOR-DATA-AND-MAPS-IN-BC-MAP-HUB-ARCGIS-ONLINE)
+ [**HOW TO BEST FILL IN METADATA**](#HOW-TO-BEST-FILL-IN-METADATA)
+ [**FREQUENTLY ASKED QUESTIONS**](#FREQUENTLY-ASKED-QUESTIONS)
	+ [FAQ Home Page](#FAQ-Home-Page)
	+ [How to request a Group be created](#How-to-request-a-Group-be-created)
	+ [How to get an organization added or renamed](#How-to-get-an-organization-added-or-renamed)
	+ [How to request bulk changes to be done on behalf of an organization](#How-to-request-bulk-changes-to-be-done-on-behalf-of-an-organization)

-----------------------

# Audience

This document is meant for people who want to make metadata and data available through the Catalogue. It does not contain any DataBC Program internal operational information.

The Catalogue is available as a platform to host and share data and metadata for:
* BC Government Ministries and the
* Broader Public Sector (BPS).

However there may be data and metadata associated with other organizations that have been catalogued by a member of either of the above groups.

For recommendations on how to publish your data, please refer to the [Before you start](pages/before_you_start.md#before-you-start) and the [_Frequently Asked Questions_](pages/faq.md#frequently-asked-questions-faq) pages.

Feel free to contact the [DataBC Data Architecture Services](mailto:databc.da@gov.bc.ca) team.

# Purpose

The contents of this space is to assist data and metadata providers.

-----------------------------------------------------------

## HOW TO BECOME A PROVIDER TO THE CATALOGUE
+ To become a Catalogue editor/publisher for a Custodial organization (a branch or division), approval from that Branch or Division's Director or Executive Director is required.

+ This approval, along with the name of the Branch or Division and list of new editors is then forwarded to the DataBC Catalogue Services team or by emailing data@gov.bc.ca.

+ Organizations in the Broader Public Sector (BPS) may publish metadata records and data to the Catalogue but for Open Data these organizations will require their own licence. To create a licence contact data@gov.bc.ca to start the discussion and see [how to create an Open Government Licence](#Creating-an-Open-Government_Licence).

+ As a Steward on behalf of another organization (branch or division), to become a provider, authorization is required from the custodian of the Branch or Division.

## WHICH LICENCE TO USE

### Access Only
_Access only_ is the standard and is a statement of use that is restrictive as defined in the [Crown Copyright Page](https://www2.gov.bc.ca/gov/content/home/copyright).
+ 	Access only: "reproduction is not permitted without written permission."
+ 	A user is then required to request permission through the [IPP office form](https://forms.gov.bc.ca/copyright-permission-request) and does have a fee associated with it.

### Open Government Licence - British Columbia

Whenever possible we recommend data be published under an Open Government Licence, which is much more permissive.
* Some tools require this licence to be applied , like Shiny.

+ 	[Open Information and Open Data Policy](https://www2.gov.bc.ca/assets/gov/british-columbians-our-governments/services-policies-for-government/information-management-technology/information-privacy/resources/policies-guidelines/open-information-open-data-policy.pdf)

+ 	[Open Data Licence - British Columbia (OGL-BC)](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61)

+ 	[Open Data - Physical Datasets](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/open_data_physical_dataset_extract.pdf) is a list of open format file. This document is slated for update as there are other modern open formats.

+ 	[Open Data Assessment and Checklist](https://www2.gov.bc.ca/assets/gov/data/open-data/open_data_assessment_and_checklist.docx)

To publish something under OGL-BC you will need to contact multiple people for authorization. Names of who to contact and other resources are included in the [Open Data Assessment and Checklist](https://www2.gov.bc.ca/assets/gov/data/open-data/open_data_assessment_and_checklist.docx) document.

+ The [Ministry Information Security Officer (MISO)](https://intranet.gov.bc.ca/intranet/content?id=DC4623F6F1944065B83F70297ED419D7)

+ The [Intellectual Properties Office](https://www2.gov.bc.ca/gov/content?id=4F03158C0AF84EC08DBB5BE3E873C33E) - email [QPIPPCopyright@gov.bc.ca](mailto:QPIPPCopyright@gov.bc.ca)

+ Sign off from the Custodial organization's Deputy Minister or designated alternate is required.

Once these approvals are in place, Data can be published under OGL-BC if:

+ it is in an open format, e.g., CSV, Shape File (SHP), JSON, or additional formats noted by the OCIO's [Open Data Physical Dataset Format Standard](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/open_data_physical_dataset_extract.pdf). 

+ The Catalogue record links to the appropriate Open Data Licence.


### Other Open Government Licences
The Catalogue lists many other licences from the Broader Public Sector to that of Federal licences.
+ Federal Licences are listed as there are times when BC Government employees require data to be published for their own consumption via one or more channels.


#### Creating an Open Government Licence

The Broader Publish Sector (BPS) is not permitted to use the OGL-BC and thus must create their own. These steps are what is suggested:

1. Copy our [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61), as it is consistent with the Feds and other Local Governments
	+ examples: [**BC Assessment**](https://info.bcassessment.ca/pages/opengovernmentlicencebcassessment.aspx) and [**Elections BC**](https://www.elections.bc.ca/docs/EBC-Open-Data-Licence.pdf)
1. Modify the identified text to personalize it for your org
	1. **Licence Name** change:
		+ _‘Open Government License – British Columbia’_ to
		+ _‘Open Government License – BC Oil and Gas Commission’_
			+ This name should be the same that is found on the BC List of Agencies, Crown Corps, etc
	1. Change line:
		+ _‘Contains information licensed under the Open Government Licence – British Columbia.’_ to
		+ _‘Contains information licensed under the Open Government Licence – BC Oil and Gas Commission’_.
	1. **Information Provider** change:
		+_‘means Her Majesty the Queen in right of the Province of British Columbia.’_ to
		+ ‘means BC Oil and Gas Commission.’_
	1. **Versioning** change:
		+ _‘This is version 2.0 of the Open Government Licence for Government of British Columbia Information.’_ to
		+ _‘This is version 1.0 of the Open Government Licence for BC Oil and Gas Commission Information.’_
	1. **Note**: remove section on BC Government Copyright or whole line:
		+ _'Note: as per B.C. Government Copyright, the following licence only applies to records in the B.C. Data Catalogue that specify it.'_
1. Publish the OGL to a public site so that it can add it to the drop down list of licence options.

## HOW TO CREATE A NEW METADATA RECORD
If wanting to use the CKAN API to create metadata you will find more information [here](pages/bcdc_api_dev_workflow.md).

1.   Click the **Log in** button the upper right to log into the [BC Data Catalogue](https://catalogue.data.gov.bc.ca/dataset).
	+ This will take you to your dashboard that may or may be useful for you.
1.   Click the **Datasets** button on the toolbar or navigate to [Datasets](https://catalogue.data.gov.bc.ca/dataset) page.
1. 	Click the [**Add Dataset**](https://catalogue.data.gov.bc.ca/dataset/add) button.
1.   Choose a dataset type from one of the four types available that best fits your data, service or application.

|Dataset Type|Description|Requirements|
|:---|:---|:---:|
|Dataset| These are tables in Comma Separated Value (CSV) files, or MS Excel Spreadsheets (XLS) or possibly even tabular PDF files.| |
|Geographic Dataset|This is data that contains geospatial information along with other data.  Additional geospatial metadata elements are available to be populated, e.g., spatial reference system.|Must be used for all BCGW Datasets|
|Application Dataset|Metadata records in this category describe applications that are available for use.  Applications provide access to data.| |
|Web Service - API|Metadata records in this category describe available web services, or application programming interfaces.| |

1.  Click the **Create Dataset** button.
1.	Fill in all mandatory fields and highly suggest filling in all non mandatory fields as well to assist the users to understand and use the data better.
	+ Suggestions on values to enter in [metadata](HOW-TO-BEST-FILL-IN-METADATA). 
1.  After filling in the details in the **Create dataset** tab.
1.	Click the **Next: Add Data** to save your changes.

## HOW TO MANAGE METADATA RECORD RESOURCES
If wanting to use the CKAN API to manage metadata and resources you will find more information [here](pages/bcdc_api_dev_workflow.md).

1.  Log into the Catalogue.
1.  Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record. 
	+ The "Edit Metadata" allows for the editing of all content.
1. 	Click the **Resources** tab.
1.  After making edits in the **Edit Metadata** tab, click the **Update Dataset** to save your changes.

### Adding a new resource
Once in edit mode of the record:

1.	Click the **+ Add new resource** button.
1.  Fill in the required fields
1.	Upload or provide a link to your data and provide information about the data resource.
    1.   **Upload**: To upload a file, e.g., CSV, directly into the Catalogue,
		1.	Click the **Upload** button and select the file to upload from your local computer.
    1.   **Link**: To link to a file stored elsewhere, e.g., a website or FTP site,
		1. Click the **Link** button and enter the URL of the file.

**Note: Only files less than 150MB in size can be uploaded to the Catalogue.**

**Note: If the file is less than 150MB limit we recommend uploading the file to the Catalogue vs. storing the data elsewhere.**

*   Additional resources can be added by clicking **Add** and repeating the process above.
	
#### Adding a BCGW resource
Ensure that on the main metadata details page has the list of the BCGW object schema and name, e.g, _schema.table_.

1.  Click the **Resources** tab.
1. 	Click the **Manage BCGW Resource** button.
1.	Click the **Yes** button on the _Object is available, would you like to add the resource link?_ pop-up.
1.	Fill in the following details, where the update cycle is the mandatory field:
	1.	**Resource Description**
	1.	**Resource Update Cycle**
	1.	**Beginning Date**
	1.	**End Date**
1.	Click the **Save** button.
1.	Click the **Finish** button on the _Successfully added._ pop-up.

#### Automated BCGW WMS and KML resources
Publicly visible datasets in the BCGW that are made available in iMapBC will also have WMS and KML created.
* The addition of these resources is handled through an automated script.

### Editing the properties of an existing resource
There are two ways to edit a resource, one is to click the **Resources** tab, but the follow is the simplest method:

On the main record page beside each Resource is an **Explore** button,

1.  Click the **Explore** drop down button.
1.	Click the **Edit** option to edit the resource.
1.  Make edits that follow the recommendations outlined in the [creating a record section](pages.metadata_providers_guide.md#HOW-TO-CREATE-A-NEW-METADATA-RECORD).
1.   Click the **Update Resource** button to save your changes.

### Replacing an existing resource
In the edit mode on a resource as outlined in [editing the properties section above](#Editing-the-properties-of-an-existing-resource):
1.  Click the **Remove** button at the end of the **File** URL.
1.  Re-upload or provide a new link to your data.
1.	Make any other edits needed to reflect the updated/new resource.
1.  Click **Update Resource** to save your changes.

### Deleting an existing resource
In the edit mode on a resource as outlined in [editing the properties section above](#Editing-the-properties-of-an-existing-resource):
1.   Click the **Delete** button at the bottom of the page. 

## HOW TO PUBLISH A METADATA RECORD

Metadata records have a life cycle from Draft to Pending Publish to Published to Pending Archive to Archived.

1.   Log into the Catalogue.
1.   Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
1.   Change the dataset **Record State**(first metadata element):
		+ from **DRAFT**
		+ to **PENDING PUBLISH**.
1.   Click the **Update Dataset**.
		+ This will then send an email to the Catalogue team that you are ready to publish the record.
		+ The record will be reviewed for:
			+ Completeness
			+ Data quality
			+ Licence type
	
**Publication timing**: if there is a specific time and date that the release of these records is required contact the Catalogue team to work on timing that is withing regular government business hours, M-F 8:30 to 5pm.

The Catalogue team will validate the record and if all is in order will change the state to **Published** and you will be notified of this by email; or a Catalogue team member may contact you with questions about your record.

## HOW TO ARCHIVE A METADATA RECORD

Data and metadata records have a life cycle that includes Archiving.

1.  Log into the Catalogue.
1.  Navigate to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
1.	Scroll down to **Resource Status** and change this to either:
	1.  **obsolete** and
		1. Add a link for a **Replacement Record**.
			+ Often this is another record in the catalogue and recommend to use the replacement record's permalink.
			+ If there is no replacement, then either the main catalogue page can be used or a webpage about the data or program.
	1.	**historicalArchive**, this then requires two additional fields that was part of a legacy corporate archival system.
		1.	**Retention Expiry Date**
		1.	**Source Data Path**
1.  Change the dataset **Record State**(first metadata element):
	+ from **DRAFT**
	+ to **PENDING PUBLISH**.

## PUBLISHING METADATA REQUIREMENTS FOR DATA AND MAPS IN BC MAP HUB (ARCGIS ONLINE)
The use of the BC Map Hub has a requirement for the creation of metadata alongside data and maps. The following documentation will assist in that process.
+ [Publication Request Form](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_public_publication_checklist_20180111.docx)
+ [Content Publication Guidelines](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_metadata_and_presentation_guidelines_20180809.docx)
+ [Tips and Tricks](https://www2.gov.bc.ca/assets/download/FC1CCC3FAC1D4ECE8557E44F54B1C3BC)

## HOW TO BEST FILL IN METADATA

* Mandatory fields are marked with an *.
* Not all fields are included for each resource type. For a full list see [the table here:](https://github.com/bcgov/data-standards/blob/master/pages/metadata_standards.md#MANDATORY-METADATA-FOR-THE-BC-DATA-CATALOGUE)

|Data Element|Example(s)|Recommendations|
|:---|:---|:---|
|_**Dataset**_|||
|**State** *|DRAFT, PENDING PUBLISH, PUBLISHED,<br>PENDING ARCHIVE, PENDING ARCHIVE|This changes the state of the publication workflow.|
|**Title** *|_should be written in a way the general public can understand_|Do not include organization or program names in titles as these may change over time. Unless there is no other way to distinguish a dataset from another of similar title.<br>For records that will include multiple years, do not include the year in the title.|
|**URL** *| | Will be auto-populated based on the title.<br>If the title includes a parentheses at the end then recommend removing this from the URL.|
|**Organization** *|Ministry of Citizen Services|Required|
|**Sub-Organization** *|DataBC|Required|
|**Description** *|_detailed description about the data_|If there is a acronym, always spell out the name in full and then include the acronym in parentheses|
|**Purpose**|_summary of the intentions for which the dataset was developed_|Include more information about a record will aid users and allow for more self serve of information.|
|**Data Quality**|_descriptive text that can include info about issues, completeness, consistency, etc._|Include more information about a record will aid users and allow for more self serve of information.|
|**Lineage Statement**|_information about the events or source data used in constructing the data_|Include more information about a record will aid users and allow for more self serve of information.|
|**More Info**|_supporting url(s)_|Links should be added to provide more information a user can go to.<br> These should use https:// instead of http://. <br>For pages within the BC Gov webpages, if possible, the permalinks should be used as this allows the pages to move around but the links will not become broken.<br>At the bottom right is a gray icon with an arrow pointing to the right.<br>Click this and then click the **Copy** button.|
|**Keywords** *|_searchable term(s)_|Are important words related to a dataset and can include common words, phrases or acronyms.|
|**ISO Topic Category**|boundaries|[For more information](https://www2.usgs.gov/science/about/thesaurus-full.php?thcode=15)|
|Data Element|Example(s)|Recommendations|
|_**Contact**_|||
|**Name** *|_contact's first and last name_|This may a name for a generic inbox.|
|**Email** *|_someone@somewhere.ca_|This may be the email of a generic inbox.|
|**Organization** *|Ministry of Citizen Services|The organization or ministry the contact is from.|
|**Sub-Organization** *|DataBC|The sub-organization, branch or program area the contact is from.|
|**Role** *|pointOfContact|Most often this is set to pointOfContact. Custodian is reserved for the Director or a Executive Director of a branch.|
|**Contact Displayed** *|Yes|Set to Yes when the contact is to be visible to the public. No, allows the contact to only be visible when logged in.|
|_**Data Currency / Update**_|---|---|
|**Resource Status** *|planned|Describes the state of the data. Choose the most relevant Resource Status and Date Type that best matches the currency of the data.<br> Multiple dates can be added to track the progress of the data.|
|**Data Type** *|Created, Published||
|**Date** *|_YYYY-MM-DD_||
|_**Access & Security**_|||
|**Who can view this data?** *|Public|This is intended to be who can view the data in a web application.<br>For data in the BCGW, this refers to the security applied to in iMapBC.<br>If there is a desire to change this security setting contact [Data Architecture Services](mailto:databc.da@gov.bc.ca) as changing it in the metadata record will not apply the change at the application level.|
|**Who can view this record?** *|Public|This allows a provider to make a metadata record visible only when logged in, i.e., IDIR.|
|**Who can download this data?** *|Public|This is intended to be who can download the data. For data in the BCGW, this refers to the security applied to the Distribution Service.<br>If there is a desire to change this security setting contact [Data Architecture Services](mailto:databc.da@gov.bc.ca) as changing it in the metadata record will not apply the change at the application level.|
|**Who can access this application?** *|Public|Required|
|**Licence** *|Open Government Licence - British Columbia|This is very important as it determines [how the data can be used](#which-licence-to-use)|
|**Security Classification** *|LOW-PUBLIC|Describes how secure the data is. [See the Security Classification Standard](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)|
|_**Preview Information**_|||
|**Layer name**|Name of the layer for preview|This is auto-populated when a BCGW dataset is made available through public WMS|
|**Preview latitude**|Latitude of layer for preview|This is auto-populated when a BCGW dataset is made available through public WMS|
|**Preview longitude**|Longitude of layer for preview|This is auto-populated when a BCGW dataset is made available through public WMS|
|**Preview map service URL**|URL of map service for preview|This is auto-populated when a BCGW dataset is made available through public WMS|
|**Preview zoom level**|Zoom level for preview|This is auto-populated when a BCGW dataset is made available through public WMS|
|**Image URL**|_URL for non map service images| |
|**Link to iMap**| |This link is auto-populated when a BCGW dataset is publicly visible in iMapBC|
|_**Geographic extent**_|||
|**North**|60.0|This is the bounding box of the province and auto-populated for Geographic type resources|
|**South**|48.0|This is the bounding box of the province and auto-populated for Geographic type resources.|
|**East**|-113.5|This is the bounding box of the province and auto-populated for Geographic type resources.|
|**West**|-139.5|This is the bounding box of the province and auto-populated for Geographic type resources.|
|**Spatial Datatype**|SDO_GEOMETRY|N/A|
|_**Object Description**_|||
|**Object Name**|_schema.table(view)_|This is use by Services tied to the BCGW.<br>This must be written identically as what is in the database and ensure that there are hidden spaces at the end.|
|**Column Name**||This is use by Services tied to the BCGW|
|**Short Name**| |This is uneditable and auto-populated from metadata in the BCGW|
|**Data Type**| |This is uneditable and auto-populated from metadata in the BCGW|
|**Data Precision**| |This is uneditable and auto-populated from metadata in the BCGW|
|**Comments**| |This is uneditable and auto-populated from metadata in the BCGW|


## FREQUENTLY ASKED QUESTIONS
### FAQ Home Page
[_Frequently Asked Questions_](pages/faq.md#publishing-metadata-records-to-the-bc-data-catalogue)

### How to request a Group be created
Groups are intended for a listing of like datasets for a specific purpose that can be across multiple organizations.
+ These are not intended to replace a full listing of records for an sub-organization.
+ Groups by default are public but a request them to be visible to IDIR only can be made.

To create a group, the following information is required and can be sent to the Catalogue team at [datacat@gov.bc.ca](mailto:datacat@gov.bc.ca).

**Requirements:**
+ **Group Name**:
+ **Group Description**:
+ **URL**: _for more information_
+ **Image**: _either a file or url_
+ **Members**: _list of IDIRs who will maintain the Group_
+ **Group visibility**: Public or IDIR

### How to get an organization added or renamed
Organizations change names frequently and thus need continual maintenance.

If a Organization/Ministry or Sub-organization/Branch/Division/Program has changed names, the following can be following information can be sent to the Catalogue team at [datacat@gov.bc.ca](mailto:datacat@gov.bc.ca).

+ Old name
+ New name
+ List of data providers
	+ Whenever an update to an sub-organization we ask that the members and contacts list be reviewed.
	+ We can provide this.

### How to request bulk changes to be done on behalf of an organization
+ Bulk changes can be requested of the Catalogue team when appropriate.
+ Bulk changes can be done by a user via the API
+ Bulk changes that are common:
	+ Contact information
	+ State Change
	+ URL modifications for More Info and Resources

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM - DATA PUBLICATION PROCESS][2]

-------------------------------------------------------

[1]: #publishing-metadata-and-data-to-the-bc-data-catalogue
[2]: ../publishing-data-to-databc.md#data-publication-process