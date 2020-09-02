# PUBLISHING METADATA AND DATA TO THE BC DATA CATALOGUE

This document provides a set of standards, guidelines, and procedures around loading and maintaining data to be served by the DataBC Program's access channels, which are:
+ [_The BC Geographic Warehouse (BCGW)_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/bc-spatial-data-infrastructure/bc-geographic-warehouse)
   + [_iMapBC_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/imapbc)
   + [_Data Download Services_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/data-distribution-services)
+ [_The BC Data Catalogue (BCDC)_](https://catalogue.data.gov.bc.ca)
+ [_Web Map and Feature Services (WMS/WFS)_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/map-services)
+ [_BC Map Hub (ArcGIS Online)_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol)

-----------------------
## Table of Contents
+ 	[**HOW TO BECOME A PROVIDER**](#how-to-become-a-provider)
+   [**HOW TO REQUEST A GROUP**]()
+   [**WHICH LICENCE TO USE**](#which-licence-to-use)
+   [**HOW TO CREATE A NEW METADATA RECORD**](#how-to-create-record)
+   [**HOW TO EDIT A METADATA RECORD**](how-to-edit-record)
+   [**HOW TO MANAGE METADATA RECORD RESOURCES**](#how-to-manage-record-resources)
+   [**HOW TO PUBLISH A METADATA RECORD**](#how-to-publish-record)
+   [**HOW TO PUBLISH UNDER THE BC OPEN DATA LICENCE**]()
+   [**HOW TO ARCHIVE A METADATA RECORD**]()
+   [**FREQUENTLY ASKED QUESTIONS**]()

-----------------------

# Audience

This document is meant for people who want to make metadata and data available through the BC Data Catalogue (BCDC), which is part of the DataBC Program. It does not contain any DataBC Program internal operational information.

For recommendations on how to publish your data, please refer to the [Before you start](pages/before_you_start.md#before-you-start) and the [_Frequently Asked Questions_](pages/faq.md#frequently-asked-questions-faq) pages. 

Feel free to contact the [DataBC Data Architecture Services](mailto:databc.da@gov.bc.ca) team.

# Purpose

The contents of this space are provided as a set of 
  
-----------------------------------------------------------

## How to become a provider

## How to become a provider as a steward for another organization

## How to request a group

## How to get an organization added or renamed

## Which licence to use

### Access Only
_Access only_ is the standard and is [restrictive](https://www2.gov.bc.ca/gov/content/home/copyright). 

### Open Government Licence - British Columbia

Whenever possible we recommend data be published under the [_Open Government Licence (OGL)_](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc) which is much more permissive.

**Note: publishing data under the Open Government Licence - British Columbia requires a completed and approved [Open Data Assessment](https://www2.gov.bc.ca/assets/gov/data/open-data/open_data_assessment_and_checklist.docx).**


### Other Open Government Licences

### Creating an Open Government Licence

## How to create a new metadata record

1.   Log into the [BC Data Catalogue](https://catalogue.data.gov.bc.ca/dataset) with the *Log in* button the upper right.
	+ This will take you to your dashboard that may or may be useful for you.
1.   Click on the *Datasets* button on the toolbar or navigate to [Datasets](https://catalogue.data.gov.bc.ca/dataset) page. 
1. 	Click the [Add Dataset](https://catalogue.data.gov.bc.ca/dataset/add) button.
1.   Choose a dataset type from one of the four types available that best fits your data, service or application.

|Dataset Type|Description|Requirements|
|:---|:---|:---:|
|Dataset| These are tables in Comma Separated Value (CSV) files, or MS Excel Spreadsheets (XLS) or possibly even tabular PDF files.| |
|Geographic Dataset|This is data that contains geospatial information along with other data.  Additional geospatial metadata elements are available to be populated, e.g., spatial reference system.|Must be used for all BCGW Datasets|
|Application Dataset|Metadata records in this category describe applications that are available for use.  Applications provide access to data.| |
|Web Service - API|Metadata records in this category describe available web services, or application programming interfaces.| |

1.  Click the *Create Dataset* button.
1.	Fill in all [manditory fields](https://github.com/pumapants/data-standards/blob/master/pages/metadata_standards.md#MANDATORY-METADATA-FOR-THE-BC-DATA-CATALOGUE) and highly suggest filling in all non manditory fields as well to assist the users to understand and use the data better. Mandatory fields are marked with an *****.

	+   **Title**, **Description**, **Purpose**, **Data Quality** and **Lineage Statement** should be written in a way the general public can understand.
		+ Recommendations:
			+ Do not include organization or program names in titles as these may change over time. Unless there is no other way to distiguish a dataset from another of similar title.
			+ For records that will include multiple years, do not include the year in the title.
			+ If there is a accronym, always spell out the name in full and then include the accronym in parentases. 
			+ Although **Purpose**, **Data Quality** and **Lineage Statement** are not manditory, these are highly encouraged to be filled out. Include more information about a record will aid users and allow for more self serve of information.
	* **URL** will be auto-populated based on the title. 
		+ If the title includes a parenthasis at the end then recommend removing this from the URL.
    + **More Info** links should be added to provide more information a user can go to.
		+ These should use https:// instead of http://
		+ For pages within the BC Gov webpages, if possible, the permalinks should be used as this allows the pages to move around but the links will not become broken.
			+ At the bottom right is a gray icon with an arrow pointing to the right. 
			+ Click this and then hit the **Copy** button.
    + **Keywords** are important words related to your dataset. You can use common words, like 'fish hatcheries'. 
		+ These terms can help link multiple records that have matching keywords when searched for in the catalogue.
		+ These will aid when a user is searching for a record that it is returned.
	+ **Contacts** section: a contact is someone who is familiar with the dataset and can answer questions people might have about the data. Additional contacts can be added and can be hidden from public view.
		+ Recommendation: If a business area has a email group that can be added then make this available to the public.
			+ However an actual name of a contact should always be included, even if made only visible when logged into the catalogue.
			+ **Role**: Custodian should only be used for the name of a Director or Exective Director of a Branch or Division.
    + **Data Currency/Update** Section: this section describes the state of the data. Choose the most relevant Resource Status and Date Type that best matches the currency of the data. 
		+ Multiple dates can be added to track the progress of the data.
    + **Access and Security** Section: this section describes who has privileges to view the actual data, who can download the data, and who has permission to view the catalogue record.  
		+ **Who can view the data?**
			+ This is intended to be who can view the data in a web application.
			+ For data in the BCGW, this refers to the security applied to in iMapBC.
				+ If there is a desire to change this security setting contact [Data Architecture Services](mailto:databc.da@gov.bc.ca) as changing it in the metadata record will not apply the change at the application level.
		+ **Who can download the data?**
			+ This is intended to be who can download the data.
			+ For data in the BCGW, this refers to the security applied to the Distribution Service.
				+ If there is a desire to change this security setting contact [Data Architecture Services](mailto:databc.da@gov.bc.ca) as changing it in the metadata record will not apply the change at the application level.
		+ **Who can view this record?**
			+ This allows a provider to make a metadata record visible only when logged in, i.e., IDIR.
		+ **Security Classification** describes how secure the data is. [See the Security Classification Standard](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/information_security_classification_standard_july_17_2018.pdf)
			+ For data that is downloadable by the public, _Low Public_ should be selected_._  
		+ **Licence** is very important as it determines how the data can be used. [**See which licence to use**](#which-licence-to-use)
			

1.   After filling in the details in the **Create dataset** tab, click **Next: Add Data** to save your changes.



## How to edit a metadata record

1.   Log into the BC Data Catalogue.
1.   Navigagte to the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.  The "Edit Metadata" allows for the editing of all content.
1.   After making edits in the **Edit Metadata** tab, click **Update Dataset** to save your changes.

*   To add or manage data resources, see **_[How to manage metadata record data resources](https://www2.gov.bc.ca/gov/content/data/bc-data-catalogue/bc-data-catalogue-about/bc-data-catalogue-user-guide#how-to-manage-record-resources)_**.



## How to manage metadata record resources

*   Log into the BC Data Catalogue.
*   Locate the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
*   Select the "Resources" tab.

### Adding a new resource

*   Click the "Add New Resource" button.
*   Upload or provide a link to your data and provide information about the data resource.
    *   **Upload**: To upload a file, e.g., CSV, directly into the Catalogue, click the **Upload** button and select the file to upload from your local computer.
    *   **Link**: To link to a file stored elsewhere, e.g., a website or FTP site, click **Link **and enter the URL of the file.
	
*	For BC Geographic Warehouse datasets (spatial or none)
1. Click on

**Note: Only files less than 150MB in size can be uploaded to the Catalogue.**

**Note: If the file is less than 150MB limit we recommend uploading the file to the Catalogue vs. storing the data elsewhere. **

*   Complete the resource metadata.  Mandatory fields are marked with an *.
*   Additional resources can be added by clicking **Add** and repeating the process above.

### Editing the properties of an existing resource

*   Click the **Manage** button to edit the resource.
*   Make edits.
*   Click **Update Resource** to save your changes.

### Replacing an existing resource

*   Click the **Manage** button to edit the resource.
*   Click on the **Remove** button at the end of the **File** URL.
*   Re-upload or provide a new link to your data.
*   Click **Update Resource** to save your changes.

### Deleting an existing resource

*   Click the **Manage** button to edit the resource. 
*   Scroll to the bottom of the page and click **Delete** to remove the resource.


## How to publish a metadata record 

Metadata records have a life cycle from Draft to Pending Publish to Published to Pending Archive to Archived.

*   Log into the Catalogue.
*   Locate the metadata record to be edited and click the "wrench" tool icon (top right corner) to start editing the record.
*   Change the dataset record state to **Pending Publish**.
*   Click **Update Dataset**.
	+ This will then send an email to the Catalogue team that you are ready to publish the record.
	
Publicaiton timing: if there is a specific time and date that the release of these records is required contact the Catalogue team to work on timing that is withing regular government business hours.

The Catalogue team will validate the record and if all is in order will change the state to **Published** and you will be notified of this by email; or a Catalogue team member may contact you with questions about your record.