# USING THE BC DATA CATALOGUE API TO MANAGE METADATA AND DATA

This document provides a set of standards, guidelines, and procedures around loading and maintaining data to be served out by the BC Data Catalogue (BCDC), hereafter known as 'the Catalogue', under the DataBC Program.

-----------------------
## Table of Contents
(#HOW-TO-MANAGE-METADATA-RECORDS-AND-RESOURCES-USING-THE-CATALOGUE-API)
	+ [How to create a resource with the API](#How-to-create-a-resource-with-the-API)
	+ [How to update a resource with the API](#How-to-update-a-resource-with-the-API)
	+ [How to get the organization ID with the organization name](#How-to-get-the-organization-ID-with-the-organization-name)
	+ [How to get package names and package IDs within an organization](#How-to-get-package-names-and-package-IDs-within-an-organization)
	+ [How to get the resource names and resource IDs withing a package](#How-to-get-the-resource-names-and-resource-IDs-withing-a-package)
-----------------------

# Audience

This document is meant for people who want to use the API to make metadata and data available through the Catalogue. It does not contain any DataBC Program internal operational information.

For recommendations on how to publish your data, please refer to the [Before you start](pages/before_you_start.md#before-you-start) and the [_Frequently Asked Questions_](pages/faq.md#frequently-asked-questions-faq) pages.

Feel free to contact the [DataBC Data Architecture Services](mailto:databc.da@gov.bc.ca) team.

# Purpose

The contents of this space is to assist data and metadata providers use the Catalogue API.

-----------------------------------------------------------

## ARCHITECTURE
The base product on which BCDC is dependent is https://github.com/ckan/ckan - it is an open source application that uses extensions in a plug-in architecture to extend and customize it.

Our main customization is done through a theme extension that we manage https://github.com/bcgov/ckanext-bcgov.

The application is supported by technical infrastructure and that has a number of integrations with other systems through a combination of database and API level connections.

## HOW TO BECOME A PROVIDER TO THE CATALOGUE
+ To use the Catalogue API to manage and create metadata records one must be an editor/publisher. For more information on that see the [Catalogue Onboarding and Workflow][pages/bcdc_data_oboarding_and_workflow.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE]

## HOW TO MANAGE METADATA RECORDS AND RESOURCES USING THE CATALOGUE API
**Name of the org:**

To obtain the GUID sub-org it requires the title name of the org

1. **Option 1**:
	1. Navigate to a record you manage
	1. Click on the live link of the sub-org or branch name
	1. Copy the text in the url, e.g, "information-management-cfd" from https://catalogue.data.gov.bc.ca/organization/information-management-cfd
1. **Option 2**:
	1. Open up the Catalogue Organizations tree
	1. Navigate and click on the sub-org/branch name
	1. Copy the text in the url, e.g, "information-management-cfd" from https://catalogue.data.gov.bc.ca/organization/information-management-cfd

**Your API Key**:
1. Log into the Catalogue
1. Click on your name in the upper right
1. Bottom left corner is your personal API Key

The following python syntax is used as an example from a specific organization

### How to create a resource with the API
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_create(
        package_id='YOUR-PACKAGE-ID-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        resource_storage_location="Catalogue Data Store",
        name="my-resource-name",
        edc_resource_type="Data",
        format="csv",
        resource_update_cycle="monthly",
        resource_storage_access_method="Direct Access")


print(resp)
```
### How to update a resource with the API
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_update(
        id='RESOURCE-ID-TO-UPDATE-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        resource_storage_location="Catalogue Data Store",
        name="my-resource-name-updated",
        edc_resource_type="Data",
        format="csv",
        resource_update_cycle="monthly",
        resource_storage_access_method="Direct Access")


print(resp)
```

### How to get the organization ID with the organization name
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

org = ckan.action.organization_show(id="information-management-cfd")
print(org['name'], org['id'])
```

### How to get package names and package IDs within an organization
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

pkgs = ckan.action.package_search(fq="owner_org:a1a9c5cc-b601-4190-b206-13ba08c54292",rows=1000)
for pkg in pkgs['results']:
    print(pkg['name'], pkg['id'])

```

### How to get the resource names and resource IDs withing a package
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

pkg_data = ckan.action.package_show(id="b67255a7-8040-43c0-935c-d74f168af215")
for resource in pkg_data['resources']:
    print(resource['name'], resource['id'])
```

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

## FREQUENTLY ASKED QUESTIONS
### FAQ Home Page
[_Frequently Asked Questions_](pages/faq.md#PUBLISHING-METADATA-RECORDS-TO-THE-BC-DATA-CATALOGUE)

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

[RETURN TO PUBLISHING METADATA AND DATA TO THE BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #publishing-data-to-the-databc-program
[2]: publishing-data-to-databc.md#publishing-data-to-the-databc-program