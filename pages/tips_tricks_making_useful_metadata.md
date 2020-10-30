---
layout: default
title: Making Useful Metadata
nav_order: 51
parent: Tips & Tricks
has_toc: false
---

# MAKING USEFUL METADATA

When completing the metadata record, there are both required and non-required fields. The table below will help to define some of the fields that can be completed in a metadata record and provide suggestions on how to best complete this with your end-users in mind.

* Mandatory fields are marked with an *.
* Not all fields are included for each resource type. For a full list see [the table here:](https://github.com/bcgov/data-standards/blob/master/pages/metadata_standards.md#MANDATORY-METADATA-FOR-THE-BC-DATA-CATALOGUE)

|Data Element|Example(s)|Recommendations|
|:---|:---|:---|
|_**Dataset**_|||
|**State** *|DRAFT, PENDING PUBLISH, PUBLISHED,<br>PENDING ARCHIVE, PENDING ARCHIVE|This changes the state of the publication workflow. By changing a state a email notification will be sent to either the catalogue admin that they have an action, e.g., PENDING PUBLISH will inform them the record is ready to be reviewed and published; PUBLISHED will inform all the editors of that branch that it has been published.|
|**Title** *|_should be written in a way the general public can understand_|Recommend to not include organization or program names in titles as these may change over time. Unless there is no other way to distinguish a dataset from another of similar title.<br>For records that will include multiple years, do not include the year in the title.|
|**URL** *|_This is the title url of the metadata_| Will be auto-populated based on the title.<br>If the title includes a parentheses at the end then recommend removing this from the URL.|
|**Organization** *|Ministry of Citizen Services|This is the higher level organization responsible for the items described in the metadata.|
|**Sub-Organization** *|DataBC|I.s the custodial organization responsible for data or items.<br>This is usually set as the Branch and is under the authority of a Director or Executive Director|
|**Description** *|_detailed description about the data_|If there is a acronym, always spell out the name in full and then include the acronym in parentheses, e.g., Broad Ecosystem Inventory (BEI).|
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
|**Resource Status** *|planned|Describes the state of the data. Choose the most relevant Resource Status and Date Type that best matches the currency of the data.<br> Multiple dates can be added to track the progress of the data.|
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

[RETURN TO TOP][1]

[RETURN TO TIPS & TRICKS][2]

-------------------------------------------------------

[1]: #making-useful-metadata

[2]: ./tips_tricks.md#
