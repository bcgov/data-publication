---
layout: default
title: BC MapHub (ArcGIS Online)
parent: Web-based Mapping
nav_order: 71
nav_exclude: true
---

# B.C.'s MAP HUB - ARCGIS ONLINE (AGO)

B.C.'s Map Hub is the provincial instance of AGO.  This page is intended to help users understand what provincial data is already available in AGO and what resources are available to assist with preparation and publication of AGO content (sharing to public).

-----------------------
## Table of Contents
+ [**B.C.'s MAPHUB - PUBLISHING WORKFLOW**](#bcs-maphub-arcgis-online---publishing-workflow)
+ [**BC DATA CATALOGUE METADATA GUIDELINES FOR AGO AUTHORS**](#bc-data-catalogue-metadata-guidelines-for-arcgis-online-authors)
	+ [Custodianship](#custodianship)
	+ [Metadata](#metadata)
	+ [Why Should I Create Metadata?](#why-should-i-create-metadata)
	+ [AGO-Specific Metadata Requirements](#ago-specific-metadata-requirements)
	+ [Use of Existing BC Geographic Warehouse or External Sources](#use-of-existing-bc-geographic-warehouse-or-external-sources)
	+ [Definitions](#definitions)

-----------------------

# Audience
|**AUDIENCE**|  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|
| *AGO Content Creators* | *Data Publishers* | *Data Custodians* | *Data Managers* | *Data Stewards* | *Metadata Editors* |

---------------------------------------------------------------------

## B.C.'s MAP HUB - PUBLISHING WORKFLOW

Below are the steps to follow when publishing an AGO application:

1. AGO user has a web mapping project destined for the public domain.
   1. At the beginning of the project, you need to be aware of the process to share the content to the public, which includes a requirement for a [_BC Data Catalogue_](https://catalogue.data.gov.bc.ca/dataset) (BCDC) metadata record(s).
      1. AGO users need to get BCDC _Editor_ privileges set up so that when they send in their publication request form, they are able to create BCDC metadata record(s) for their AGO items and check off the boxes that indicate BCDC records are complete for each item that needs one.
      1. Please email the [_BC Data Catalogue Services_](faq.md#bc-data-catalogue-services) team with your Director’s approval (an email stating this approval from your Director is an acceptable means of communicating the approval) to get set up with _Editor_ privileges for your program area.
1.	AGO user creates their AGO content in [_B.C.’s Map Hub_](https://governmentofbc.maps.arcgis.com/home/index.html).
1. Metadata is required in 2 places (AGO and BCDC)
    1. AGO user populates **the AGO contents’ item details pages** with metadata. Each AGO item has its own item details page that the public can land on.
       1. Documentation for filling out AGO pages is available under [_Public Publication Requests > Content Publication Guidelines_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol). 
		1. Tips:
			1. Remember to include link(s) to your corresponding BCDC record(s) in the description section(s). 
				1. You might have to go back to do this later if you haven’t created your BCDC records yet. 
				1. Permalinks (URLs with unique ids instead of titles) are available from your BCDC records
				1. Select the **Show the Permalink** icon on the BCDC metadata record and copy the URL in the _address bar_
			1.	If you have a main application, it is a good practice to include a link to it from the description sections of any supporting AGO maps or apps etc, given that the public can land on these pages.
			1. Best practice is to include information which a member of the public would need to ensure they can access your content easily and also easily understand for what the content is intended. 
	1. AGO user **creates BCDC records** for their AGO content (only for items that require it; i.e. apps, standalone web maps, AGO hosted feature layers…). 
		1. Refer to the [_BC DATA CATALOGUE METADATA GUIDELINES FOR ArcGIS ONLINE AUTHORS_](#bc-data-catalogue-metadata-guidelines-for-arcgis-online-authors) section below for further information. 
			1. If needed, we can be available for online tutorials.
		1. Additional information on the process of preparing new data for publication in the [Gogs/Wiki User Guide](https://gogs.data.gov.bc.ca/DataBC/FAQ/wiki/Catalogue+User+Guide), including steps to publish as [_Open Data_](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc).
			1. Refer to [_Connecting to Gogs_](tips_and_tricks.md#connecting-to-gogs) for Gogs login instructions
		1. There is a table [_below_](#ago-specific-metadata-requirements) which provides further clarification on when an AGO item needs a BCDC record.
		1. When BCDC records are complete and ready to publish, AGO user must toggle the record state from Draft to Pending Publish (a flag for us to follow up).
1. AGO user fills out the [_Publication Request Form_](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/web-based-mapping/agol) when all their content, metadata requirements and remaining items on the checklist are complete. 
   1. AGO user then obtains their Project Sponsor to approve and sign (typically Director level).
1. AGO user **submits the approved checklist** to complete the publication process, via email **to** [_data@gov.bc.ca_](mailto:data@gov.bc.ca) and **cc** [_Maps Services_](mailto:datamaps@gov.bc.ca).

[RETURN TO TOP][1]

---------------------

## BC DATA CATALOGUE METADATA GUIDELINES FOR AGO AUTHORS

### Custodianship

+ All public facing ArcGIS Online (AGO) web maps, applications and AGO-hosted layers must have a _Data Custodian_. 
+ This is typically someone at the Director level who has responsibility for the business (i.e., they have authority based on legislation or policy). 
+ For more information on a Data Custodian’s role, obligations and responsibilities, along with roles related to the _Data Custodian_, please refer to [_A Guide for Data Custodians and Data Managers_](a_guide_for_data_custodians_and_data_managers.md#a-guide-for-data-custodians-and-data-managers) and the [_Data Custodianship Guidelines for BC_](https://www2.gov.bc.ca/assets/gov/data/data-management/data_custodianship_guidelines_for_the_government_of_bc.pdf).

### Metadata

+ All public facing AGO web maps, applications and AGO-hosted layers **require** an associated metadata record in the BC Data Catalogue (BCDC). 
	+ The exception to this is when the AGO content is not **stand-alone** and is a component of a public-facing main app or map (e.g., an AGO public map that is contained within a AGO public application). 
	+ In this case only the application is required to have an associated metadata record, although it may be of value to add a Resource to this metadata record containing a link directly to the map.

+ A published metadata is required before an AGO app, map, or layer can be published. 
	+ It is recommended that this process be started as early as possible so that metadata creation does not become a limiting factor to AGO app/map publishing. 
	+ See the [_table_](#ago-specific-metadata-requirements) below for more information on metadata requirements for specific types of AGO items.

+ In order to create and edit AGO metadata records within the BCDC you must be an _Editor_ for the appropriate organization with the Catalogue. 
	+ This role is approved and appointed by the _Data Custodian_ as you will be creating/editing metadata records on their behalf. 
	+ As such, it is the _Editor’s_ role to inform the _Data Custodian_ of new data holdings for which the _Data Custodian_ will have obligations or responsibilities. 
		+ To request _Editor_ privileges please e-mail [_BC Data Catalogue Services_](faq.md#bc-data-catalogue-services).

### Why Should I Create Metadata?

+ The BCDC is a system that helps people find data as well as helping data owners make their data find-able. 
	+ If you want people to be able to easily find and/or use your data, map or app, then this requires a metadata record. 
	+ The BCDC is also indexed by Google so that people searching for data outside of the BCDC interface can also find your data.

+ In addition, a metadata record within the BCDC stores information about your data, such as its currency, description, structure and contact information. 
	+ Having this information readily available within the BCDC prevents the large numbers of users interested in your data from needing to contact you directly to determine this information. 
	+ This can save you the time and effort of having to explain this information over and over.

+ As technology changes and users become more reliant on the web for finding information, systems like the BCDC and search engines like Google will increasingly become the gateways through which users find information. 
	+ Having proper metadata, and leveraging these systems, will help your data rise to the top of the search results.

### AGO-Specific Metadata Requirements

For metadata records specific to AGO content there are certain requirements that must be met:
	+ AGO-related BCDC metadata records must have all of the following tags to improve search ability: AGO, AGOL, and ArcGIS Online
	+ The Description section within the metadata record should specify and properly describe the AGO app or map and its objective, i.e. “An interactive map that…” or “A web application that…”
	
BCDC metadata records are required as indicated in the following table:

|Public AGO Item Type|BCDC record required?|AGO Item Details required to be filled out?|
|:---|:---|:---|
|Web App (i.e.Web Appbuilder App, Story Map Apps, Operations Dashboard App, Gallery App, etc.)|Yes - if app is stand-alone|Yes - include reference to corresponding BCDC record|
||No (if app is not stand-alone but a component of a main app)|Yes - include reference to corresponding BCDC record|
|Web Map|Yes (if map is stand-alone, where map is not a component of an app)|Yes - include reference to corresponding BCDC record|
||No (if map is not stand-alone but a component of a main app|Yes - include reference to corresponding BCDC record|
|AGO Hosted Data Layers (features, tiles...) - [**_New information_**](#new)|Yes|Yes - include reference to corresponding BCDC record|
|AGO Hosted Data Layers (features, tiles...) - [**_Enhanced information_**](#enhanced)|Yes (if information cannot be accessed or recreated by an average _public_ user)|Yes - include reference to corresponding BCDC record|
| |No (if AGO Item Details page sufficiently describes hot the information was added/created and the sources from which it came so that an average _public_ user could access and recreate this enhanced information based on the information provided)|Yes - sufficiently described how the information was added/created and the sources from which it came so that an average _public_ user could access and recreate this enhanced information based on the information provided.  Referenced BCDC record(s) for source data.|
AGO Hosted Data Layers - Sourced externally, but added as an item to AGO|No|Yes - provide reference to source|
|Province of British Columbia Data Layers (BCGW data layer services available in AGO)|No - these layers already have BCDC records|No - Item Details are already auto-populated for these items|
|Other AGO item types|Contact [DataBC](mailto:data@gov.bc.ca) to discuss|Yes|

### Use of Existing BC Geographic Warehouse or External Sources

+ New metadata records for existing BC Geographic Warehouse (BCGW) or BCDC datasets used within an AGO app/map are not required. 
	+ Only information that is new or enhanced (see definitions below) requires a metadata record. Existing layers will already point back to their BCDC metadata record via their respective Item Details page(s) within AGO.

+ Similarly, new metadata records for external content (i.e., federal open data) used within the AGO app/map are also not required. 
	+ Sources and references for this information should be included on the applicable Item Details page within AGO.

### Definitions

|Term|Definition|
:---|:---|
|<a name=new>_New information_</a> |Information that resides only in AGO and does not exist within the BCGW or the BCDC.|
|<a name=enhanced>_Enhanced information_</a> |Existing information that has become value-added through the addition of information not already contained within the data, or information that was created as a result of an analysis process or amalgamation of information. For the purposes of AGO metadata requirements, if the AGO layer Item Details page can sufficiently describe how the information was added/created and the sources from which it came so that an average user (i.e., member of the public) could access and recreate this enhanced information based on the information provided, then no additional metadata record would be required for this layer. This being said however, it may be advisable to create such a metadata record to address the volume of questions from interested users. |

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #data-publication-workflow---ago
