---
layout: default
title: BC's Map Hub - Publication Workflow
parent: Web-based Mapping
nav_order: 81
has_children: true
---

# BC's Map Hub - ArcGIS Online (AGO)

BC's Map Hub is the provincial instance of [AGO](https://www.esri.com/en-us/arcgis/products/arcgis-online/overview). 

This page is intended to help users understand the publication workflow and metadata requirements for AGO content.  It also indicates resources that are available to assist with preparation and publication of AGO content (sharing to public).  Wherever possible, existing public BC Geographic Warehouse (BCGW) data services in AGO should be used before attempting to publish redundant data. 

This page is written in the context that you have reviewed all information in the ‘Documentation Review’ section.

|**AUDIENCE**|  |  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|:---:|
| *AGO Content Creators* | *Data Publishers* | *Data Custodians* | *Data Managers* | *Data Stewards* | *Metadata Editors* |

## Table of Contents
+ [**BC's MAP HUB - PUBLICATION WORKFLOW**](#bcs-map-hub---publication-workflow)
+ [**METADATA GUIDELINES FOR AGO AUTHORS**](#metadata-guidelines-for-ago-authors)
	+ [Custodianship](#custodianship)
	+ [Metadata](#metadata)
	+ [AGO-Specific Metadata Requirements](#ago-specific-metadata-requirements)
	+ [Use of Existing BC Geographic Warehouse or External Sources](#use-of-existing-bc-geographic-warehouse-or-external-sources)

---------------------------------------------------------------------

## DOCUMENTATION REVIEW

+ [BC's Map Hub](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol) (all content)
+ [_Open Data_](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc)
+ BC Data Catalogue
	+ [BCDC Standards and Guidelines](dsg_bcdc.md) (all)
	+ [Publication Workflow](dps_bcdc_w.md)

---------------------------------------------------------------------

## BC's MAP HUB - PUBLICATION WORKFLOW

Below are the steps to follow when publishing an AGO application:

1. You have AGO content (maps/apps/data...) destined for the public domain.
1. At the beginning of the project, you need to be aware of the process to share the content to the public, which may include requirements for [_BC Data Catalogue_](https://catalogue.data.gov.bc.ca/dataset) (BCDC) metadata record(s).
		1. You need to have editing privileges in the BC Data Catalogue so you are able to create BCDC metadata record(s) for each of your AGO items that needs one.
		1. [**How to become a provider or editor to the catalogue**](./dps_bcdc_w_start.md#how-to-become-a-provider-to-the-catalogue)
1. Create AGO content in [_B.C.’s Map Hub_](https://governmentofbc.maps.arcgis.com/home/index.html).
1. Create Metadata in the AGO Item's details page. Refer to the [_METADATA GUIDELINES FOR AGO AUTHORS_](#metadata-guidelines-for-ago-authors) section below for more detailed information.:
	+ AGO
		1. **Populate the AGO item details pages** with metadata. Each AGO item has its own item details page accessible to the public.
1. Complete the [_Publication Request Form_](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_public_publication_checklist.docx) including your Project Sponsor's approval signature (typically Director level).
1. **Submit the [_Publication Request Form_](https://www2.gov.bc.ca/assets/gov/data/geographic/web-based-mapping/bc-map-hub/bcs_map_hub_public_publication_checklist.docx)** as an attachment to the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/6/create/22).

**Please note:** a BC Data Catqlogue metadata record is no longer required for the publication of each front-end item you wish to publish (e.g. map, web app,  dashboard, etc.) however it is a recommended tie-in to include a link to your front-end content item as a Resource on the metadata record for the data of interest being consumed. If you are not the author of the BCDC metadata record then you will have to contact the owner in order to make that edit.

---------------------

## METADATA GUIDELINES FOR AGO AUTHORS

### Custodianship

+ All public facing ArcGIS Online (AGO) web maps, applications and AGO-hosted layers must have a [Data Custodian](glossary.md#data-custodian). 
+ AGO users who are publishing data should be familiar with the associated roles and responsibilities for custodianship under BCDC Standards and Guidelines > [Roles and Responsibilities](dsg_bcdc_roles_responsibilities.md).

### Metadata

+ **AGO Item details page:**
	+ **Title:** Ensure the title accurately describes the item.
	+ **Description section:** 
		+ **Maps and Apps that are components of a main app** - include a statement that drives the audience to the main app by including the url for the main app, i.e.	
			+ This item is a component of "Main App's name", please visit it here: [link to main app]
		+ **Data that you have clipped or extracted from an existing public BCGW layer** - ensure you describe any enhancements you've made to the data, its update cycle, and intended use.  Include a reference to the source data's BCDC record i.e.
			+ BC Data Catalogue metadata for source data: [permalink URL to BCDC record]).
		+ **Data from an external source** - ensure you describe any enhancements you've made to the data, its update cycle, and intended use.  Include a statement that identifies the source.  Ensure there are no license or user agreements that preclude publishing the data.
	+ **Summary:**  A brief description of the item.
	+ **Tags:** Include keywords that describe your content and enable audience to find your item when they search for such words. Ask yourself if you were looking for this item, what words would you use to search for it?  Must include "British Columbia" and "Canada".
	+ **Credits:** Include the Sub-Organization from the BCDC Record.  This is found immediately below the Title.  For example, if DataBC is the Sub-Organization, use "Published by the Ministry of Citizens Services - DataBC Program".
	+ **Terms of Use:** In most cases AGO content will initially be published under Copyright/Access Only licencing unless you have data that you have already licensed under Open Government License - British Columbia (OGL).  We encourage clients to consider providing data under OGL. For more information about the process to license your data under OGL see [Open Data](https://bcgov.github.io/data-publication/pages/open_data.html)
		+ **for Copyright/Access Only content**, use the following paragaphs (copy/paste):
		
			The content provided by this item is [Copyright ©, Province of British Columbia.](https://www2.gov.bc.ca/gov/content/home/copyright) All rights reserved. 

			The B.C.'s Map Hub and associated materials, including map applications ("Maps"), trade-marks and official marks (collectively, "Materials"), are owned or used under license by the Province of British Columbia ("Province") and are protected by copyright and trade-mark laws. Please see the [Disclaimer](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol/terms-of-use) for further details.

			The Province does not collect, use or disclose personal information through the ArcGIS Online website. Please be aware, however, that IP addresses are collected by Esri and are stored on Esri's servers located outside of Canada. For further information, including the purposes for which your IP address is collected, please see Esri's Privacy Policy at: https://www.esri.com/legal/privacy. By accessing or using the B.C. Map Hub, you consent, effective as of the date of such access or use, to Esri storing and accessing your IP address outside of Canada for the purposes described in Esri's Privacy Policy. Should you have any questions about the collection of your IP address, please contact BCGov AGOL CONTACT at Data@gov.bc.ca, PO BOX 9864 STN PROV GOVT, Victoria BC  V8W 9T5

		+ **for Open Government License - British Columbia licensed content**, use the following paragraphs (copy/paste):
		
			The content provided by this item is licensed under [Open Government License - British Columbia](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc)

			The B.C.'s Map Hub and associated materials, including map applications ("Maps"), trade-marks and official marks (collectively, "Materials"), are owned or used under license by the Province of British Columbia ("Province") and are protected by copyright and trade-mark laws. Please see the [Disclaimer](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol/terms-of-use) for further details.

			The Province does not collect, use or disclose personal information through the ArcGIS Online website. Please be aware, however, that IP addresses are collected by Esri and are stored on Esri's servers located outside of Canada. For further information, including the purposes for which your IP address is collected, please see Esri's Privacy Policy at: https://www.esri.com/legal/privacy. By accessing or using the B.C. Map Hub, you consent, effective as of the date of such access or use, to Esri storing and accessing your IP address outside of Canada for the purposes described in Esri's Privacy Policy. Should you have any questions about the collection of your IP address, please contact BCGov AGOL CONTACT at Data@gov.bc.ca, PO BOX 9864 STN PROV GOVT, Victoria BC  V8W 9T5

	+ **Thumbnail:** (optional)  Replace the default thumbnail for the item with a photo or screenshot of the map/app/data. PowerPoint can also be a useful tool for creating a nifty thumbnail image representing your content.  Highly recommend replacing the default thumbnail for your main app.


### AGO-Specific Metadata Requirements

The BC Data Catalogue is primarily for cataloguing data, thus if a dataset has an app or map, the front-end items can all be represented on one metadata record as different Resources.

|Public AGO Item Type|BCDC record required?|AGO Item Details required to be filled out?|
|:---|:---|:---|
|Web App (i.e.Web Appbuilder App, Story Map Apps, Operations Dashboard App, Gallery App, etc.)|No new BCDC metadata required; if the item is stand-alone, include a link to the item as a Resource in applicable BCDC metadata records; Resource link not required if the item is a component of a main app|Yes - include reference to corresponding BCDC record(s)|
|Web Map|No new BCDC metadata required; if the item is stand-alone, include a link to the item as a Resource in applicable BCDC metadata records; Resource link not required if the item is a component of a main app|Yes - include reference to corresponding BCDC record(s)|
|AGO Hosted Data Layers (features, tiles...) - [**_New information_**](glossary.md#new-infromation)|Yes|Yes - include reference to corresponding BCDC record|
|AGO Hosted Data Layers (features, tiles...) - [**_Enhanced information_**](glossary.md#enhanced-information)|Yes (if information cannot be accessed or recreated by an average _public_ user)|Yes - include reference to corresponding BCDC record(s)|
| |No (if AGO Item Details page sufficiently describes how the information was added/created and the sources from which it came so that an average _public_ user could access and recreate this enhanced information based on the information provided)|Yes - sufficiently described how the information was added/created and the sources from which it came so that an average _public_ user could access and recreate this enhanced information based on the information provided.  Referenced BCDC record(s) for source data.|
AGO Hosted Data Layers - Sourced externally, but added as an item to AGO|No|Yes - provide reference to source|
|Province of British Columbia Data Layers (BCGW data layer services available in AGO)|No - these layers already have BCDC records|No - Item Details are populated for these items through an automated build process|

### Use of Existing BC Geographic Warehouse or External Sources

+ New metadata records for existing BC Geographic Warehouse (BCGW) or BCDC datasets used within an AGO app/map are not required. 
	+ Only information that is new or enhanced (see definitions below) requires a metadata record. Existing layers will already point back to their BCDC metadata record via their respective Item Details page(s) within AGO.

+ Similarly, new metadata records for external content (i.e., federal open data) used within the AGO app/map are also not required. 
	+ Sources and references for this information should be included on the applicable Item Details page within AGO.

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #bcs-map-hub---publication-workflow
