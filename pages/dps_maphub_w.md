---
layout: default
title: Publication Workflow - BC Maphub 
parent: Web-based Mapping
nav_order: 71
---

# B.C.'s MAP HUB - ARCGIS ONLINE (AGO)

This page is intended to help users understand the publication workflow and metadata requirements for AGO content.  It also indicates resources that are available to assist with preparation and publication of AGO content (sharing to public).  Wherever possible, existing public BC Geographic Warehouse (BCGW) data services in AGO should be used before attempting to publish redundant data. B.C.'s Map Hub is the provincial instance of [AGO](https://www.esri.com/en-us/arcgis/products/arcgis-online/overview).  

This page is written in the context that you have reviewed all information in the ‘Documentation Review’ section.

-----------------------

|**AUDIENCE**|  |  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|:---:|
| *AGO Content Creators* | *Data Publishers* | *Data Custodians* | *Data Managers* | *Data Stewards* | *Metadata Editors* |

-----------------------
## Table of Contents
+ [**B.C.'s MAP HUB - PUBLICATION WORKFLOW**](#bcs-map-hub---publication-workflow)
+ [**METADATA GUIDELINES FOR AGO AUTHORS**](#metadata-guidelines-for-ago-authors)
	+ [Custodianship](#custodianship)
	+ [Metadata](#metadata)
	+ [AGO-Specific Metadata Requirements](#ago-specific-metadata-requirements)
	+ [Use of Existing BC Geographic Warehouse or External Sources](#use-of-existing-bc-geographic-warehouse-or-external-sources)

---------------------------------------------------------------------

## DOCUMENTATION REVIEW

+ [B.C. MapHub](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol) (all content)
+ [_Open Data_](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc)
+ BC Data Catalogue
	+ [BCDC Standards and Guidelines](dsg_bcdc.md) (all)
	+ [Publication Workflow](dps_bcdc_w.md)

---------------------------------------------------------------------

## B.C.'s MAP HUB - PUBLICATION WORKFLOW

Below are the steps to follow when publishing an AGO application:

1. You have AGO content (maps/apps/data...) destined for the public domain.
1. At the beginning of the project, you need to be aware of the process to share the content to the public, which includes requirements for [_BC Data Catalogue_](https://catalogue.data.gov.bc.ca/dataset) (BCDC) metadata record(s).
		1. You need to have editing privileges in the BC Data Catalogue so you are able to create BCDC metadata record(s) for each of your AGO items that needs one.
1. Create AGO content in [_B.C.’s Map Hub_](https://governmentofbc.maps.arcgis.com/home/index.html).
1. Create Metadata - required in 2 places - BC Data Catalogue and AGO item details pages. Refer to the [_METADATA GUIDELINES FOR AGO AUTHORS_](#metadata-guidelines-for-ago-authors) section below for more detailed information.:
	+  BC Data Catalogue
		1. **Create BCDC metadata record(s)** for the AGO content (only for items that require it; i.e. apps, standalone web maps, AGO hosted feature layers…)
		1. When BCDC records are complete and ready to publish you, the editor/author, must toggle the record state from Draft to Pending Publish (a flag for us that the metadata is ready for follow up).
	+ AGO
		1. **Populate the AGO item details pages** with metadata. Each AGO item has its own item details page accessible to the public.
1. Complete the [_Publication Request Form_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol) including your Project Sponsor's approval signature (typically Director level).
1. **Submit the approved checklist** to complete the publication process, via email **to** [_data@gov.bc.ca_](mailto:data@gov.bc.ca) and **cc** [_Maps Services_](mailto:datamaps@gov.bc.ca).

---------------------

## METADATA GUIDELINES FOR AGO AUTHORS

### Custodianship

+ All public facing ArcGIS Online (AGO) web maps, applications and AGO-hosted layers must have a [Data Custodian](glossary.md#data-custodian). 
+ AGO users who are publishing data should be familiar with the associated roles and responsibilities for custodianship under BCDC Standards and Guidelines > [Roles and Responsibilities](dsg_bcdc_roles_responsibilities.md).

### Metadata

**Metadata is required in 2 places for AGO content:**  BCDC, and AGO item details pages.
+ **BCDC**
	+ The [_AGO SPECIFIC METADATA REQUIREMENTS_](#ago-specific-metadata-requirements) section below details metadata requirements for specific types of AGO items.  The table illustrates scenarios where your AGO item may not require its own BCDC record. 
	+ All public facing AGO hosted content (data, maps, apps) requires a metadata record in the BC Data Catalogue.  Exceptions to this include:
		+ when the AGO maps/app is not "stand-alone" and is only a component of a main/parent public-facing app. In this case only the main/parent application requires a BCDC metadata record
		+ when the AGO hosted data is a copy or subset of an existing provincial layer that already has a BCDC record
		+ when the source is from by an external source
	+ For additional information on metadata, refer to the BCDC Standards and Guidelines and Publication Workflow pages in the [Documentation Review](#documentation-review) section above.

+ **AGO item details pages:**
	+ **Title:** Ensure the title accurately describes the item.
	+ **Description section:** 
		+ **If your item requires its own BCDC record:** - in the interest of minimizing duplication of effort and ongoing maintenance, the minimum requirement is to reference the item's BCDC record i.e. 
			+ BC Data Catalogue metadata: [permalink URL to bcdc record]).
		+ **If your item does not require its own BCDC record:**
			+ **Maps and Apps that are components of a main app** - include a statement that drives the audience to the main app by including the url for the main app and reference the main app's BCDC record i.e.
				+ This item is a component of "Main App's name", please visit it here: [link to main app]
			+ **Data that you have clipped or extracted from an existing public BCGW layer** - ensure you describe any enhancements you've made to the data, its update cycle, and intended use.  Include a reference to the source data's BCDC record i.e.
				+ BC Data Catalogue metadata for source data: [permalink URL to bcdc record]).
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

|Public AGO Item Type|BCDC record required?|AGO Item Details required to be filled out?|
|:---|:---|:---|
|Web App (i.e.Web Appbuilder App, Story Map Apps, Operations Dashboard App, Gallery App, etc.)|Yes - if app is stand-alone|Yes - include reference to corresponding BCDC record|
||No (if app is not stand-alone but a component of a main app)|Yes - include reference to corresponding BCDC record|
|Web Map|Yes (if map is stand-alone, where map is not a component of an app)|Yes - include reference to corresponding BCDC record|
||No (if map is not stand-alone but a component of a main app|Yes - include reference to corresponding BCDC record|
|AGO Hosted Data Layers (features, tiles...) - [**_New information_**](glossary.md#new-infromation)|Yes|Yes - include reference to corresponding BCDC record|
|AGO Hosted Data Layers (features, tiles...) - [**_Enhanced information_**](glossary.md#enhanced-information)|Yes (if information cannot be accessed or recreated by an average _public_ user)|Yes - include reference to corresponding BCDC record|
| |No (if AGO Item Details page sufficiently describes hot the information was added/created and the sources from which it came so that an average _public_ user could access and recreate this enhanced information based on the information provided)|Yes - sufficiently described how the information was added/created and the sources from which it came so that an average _public_ user could access and recreate this enhanced information based on the information provided.  Referenced BCDC record(s) for source data.|
AGO Hosted Data Layers - Sourced externally, but added as an item to AGO|No|Yes - provide reference to source|
|Province of British Columbia Data Layers (BCGW data layer services available in AGO)|No - these layers already have BCDC records|No - Item Details are already auto-populated for these items|
|Other AGO item types|Contact [DataBC](mailto:data@gov.bc.ca) to discuss|Yes|

### Use of Existing BC Geographic Warehouse or External Sources

+ New metadata records for existing BC Geographic Warehouse (BCGW) or BCDC datasets used within an AGO app/map are not required. 
	+ Only information that is new or enhanced (see definitions below) requires a metadata record. Existing layers will already point back to their BCDC metadata record via their respective Item Details page(s) within AGO.

+ Similarly, new metadata records for external content (i.e., federal open data) used within the AGO app/map are also not required. 
	+ Sources and references for this information should be included on the applicable Item Details page within AGO.

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #bcs-map-hub---publication-workflow
