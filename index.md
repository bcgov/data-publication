---
layout: default
title: Home
nav_order: 1
has_toc: false
---

# PUBLISHING DATA TO THE DATABC PROGRAM

This document provides a set of standards, guidelines, and procedures around loading and maintaining data to be served by the DataBC Program's access channels, which are:
+ [_The BC Geographic Warehouse (BCGW)_](https://www2.gov.bc.ca/gov/content?id=18B291A12B4F42EA98169892F4B46D61)
   + [_iMapBC_](https://www2.gov.bc.ca/gov/content?id=C52F8C3BFE8C4110A63171337F363F43)
   + [_Data Download Services_](https://www2.gov.bc.ca/gov/content?id=B19E16070B824DB481F49CEE3B9AF1F8)
+ [_The BC Data Catalogue (BCDC)_](https://catalogue.data.gov.bc.ca)
+ [_Web Map and Feature Services (WMS/WFS)_](https://www2.gov.bc.ca/gov/content?id=95D78D544B244F34B89223EF069DF74E)
+ [_BC Map Hub (ArcGIS Online)_](https://www2.gov.bc.ca/gov/content?id=DE0602BB42664AA28C9F059D45CC1CC2)

-----------------------

## Purpose

The contents of this space are provided as a set of standards, guidelines, and procedures around loading and maintaining data to be served by the DataBC Program. These guidelines will evolve as needed, based on feedback, so we encourage the use of any of the following feedback channels to evolve the content.

+ github comments on any of the github pages where you would like to suggest a recommendation or correction
+ email to databc.da@gov.bc.ca  

Please refer to [_Data Publication: Roles and Responsibilities_](pages/roles_and_responsibilities.md#data-publication-roles-and-responsibilities) to learn about the various roles and responsibilities of the people involved in data publication, and to
[_How to use this site_](#how-to-use-this-site) for a guide to which portions of this site will be relevant to your role.
  
-----------------------------------------------------------

# Audience

This document is meant for people who want to make data available through the DataBC Program or maintain data which has been previously published. It does not contain any DataBC Program internal operational information.

For recommendations on how to publish your data, please refer to the [Before you start](pages/before_you_start.md#before-you-start) and the [_Frequently Asked Questions_](pages/faq.md#frequently-asked-questions-faq) pages. 

Feel free to contact the [DataBC Data Architecture Services](mailto:databc.da@gov.bc.ca) team.

-----------------------

## Table of Contents
+ [**DATA PUBLICATION PROCESS**](#data-publication-process)
+ [**DATA GUIDANCE AND BEST PRACTICES**](#data-guidance-and-best-practices)
+ [**NAMING AND DESCRIBING STANDARDS**](#naming-and-describing-standards)
+ [**TIPS AND TRICKS**](#tips-and-tricks)
+ [**ADDITIONAL REFERENCES**](#additional-references)
+ [**RELATED STANDARDS AND RESOURCES**](#related-standards-and-resources)
+ [**HOW TO USE THIS SITE**](#how-to-use-this-site)

-----------------------

## DATA PUBLICATION PROCESS

The following links will help you understand the data publication process.

+ [_Before You Start_](dsg_before_you_start.md)
+ Data Publication Services 
   + [_BC Geographic Warehouse_](dps_bcgw_w.md)
   + [_BC Data Catalogue_](dps_bcdc_w.md)
+ Data Standards and Guidelines
   + [_BC Geographic Warehouse_](dsg_bcgw.md)  
   + [_BC Data Catalogue_](dsg.bcdc.md)
 
[RETURN TO TOP][1] 

-----------------------------------------------------------
 
## DATA GUIDANCE AND BEST PRACTICES

The following links provide data standards supporting guidance and best practices for a successful DataBC Program project. 

+ <a name=datatype>[_Data Type Standards_](pages/data_guidance_and_best_practices.md#data-type-standards)</a>
+ <a name=spatial>[_Spatial Data Standards_](pages/data_guidance_and_best_practices.md#spatial-data-standards)</a>
+ <a name=constraints>[_Use of Database Constraints_](pages/data_guidance_and_best_practices.md#use-of-database-constraints)</a>
+ <a name=order>[_Order of Columns in Tables and Views_](pages/data_guidance_and_best_practices.md#order-of-columns-in-tables-and-views)</a>
+ <a name=indicator>[_Use of Indicator and Flag Columns_](pages/data_guidance_and_best_practices.md#use-of-indicator-and-flag-columns)<a/>
+ <a name=values>[_Use of NULL Values_](pages/data_guidance_and_best_practices.md#use-of-null-values)</a>

[RETURN TO TOP][1] 

-----------------------------------------------------------

## NAMING AND DESCRIBING STANDARDS

The following links provide naming and describing guidelines for the BCGW, BCDC, Web Services, including security and files.

+ <a name=naming>[_General Naming Guidelines_](pages/naming_and_describing.md#general-naming-guidelines)</a>
+ <a name=describing>[_General Describing Guidelines_](pages/naming_and_describing.md#general-describing-guidelines)</a>
+ <a name=abbreviations>[_General Abbreviation Guidelines_](pages/naming_and_describing.md#general-abbreviation-guidelines)</a>
+ <a name=geographicwarehouse>BC Geographic Warehouse (BCGW)</a>
   + [_Oracle Component Naming Standards_](pages/naming_and_describing.md#oracle-component-naming-standards)
+ <a name=catalogue>[_BC Data Catalogue (BCDC)_](pages/naming_and_describing.md#bc-data-catalogue-naming-guidelines)</a>
   + [_Naming Guidelines_](pages/naming_and_describing.md#bc-data-catalogue-naming-guidelines)
   + [_Content and Describing Guidelines_](pages/naming_and_describing.md#BC-DATA-CATALOGUE-CONTENT-AND-DESCRIBING-GUIDELINES)
+ <a name=security>Security</a>
   + [_Role Naming and Creation Standards_](pages/role_naming_and_creation_standards.md#role-naming-and-creation-standards)
   + [_Proxy Naming Standards_](pages/proxy_creation_standards.md#proxy-naming-standards)
+ <a name=webservices>[_Web Services Content and Describing Guidelines_](pages/naming_and_describing.md#web-services-content-and-describing-guidelines)</a>
+ <a name=files>[_Files_](pages/naming_and_describing.md#naming-and-describing-standards)</a>
   + [_Data Replication Standards and Guidelines_](pages/data_replication_standards_and_guidelines.md#data-replication-standards-and-guidelines)
   + [_Layer Presentation Standards_](pages/layer_file_presentation_standards.md#layer-presentation-standards)
   + [_Staging Area Standards_](pages/staging_area_standards.md#staging-area-standards)
 
[RETURN TO TOP][1] 

-----------------------------------------------------------
 
## TIPS AND TRICKS

The following links provide you with tips and tricks when working on a DataBC Program project. 

+ <a name=connecting>[_Connecting to the BCGW_](pages/tips_and_tricks.md#connecting-to-the-bcgw)</a>
+ <a name=layers>[_Adding Layers using ArcGIS Desktop_](pages/tips_and_tricks.md#adding-layers-using-arcgis-desktop)</a>
+ <a name=layers>[_Distribution Service - Downloading BCGW Data_](pages/distribution_service)</a>
+ <a name=gogs>[_Connecting to Gogs_](pages/tips_and_tricks.md#connecting-to-gogs)</a>

[RETURN TO TOP][1] 

-----------------------------------------------------------

## ADDITIONAL REFERENCES

The following links provide additional information to provide terminology and answers to frequently asked questions.
 
+ <a name=glossary>[_Glossary of Terms_](pages/glossary.md#glossary)</a>
+ <a name=faq>[_Frequently Asked Questions (FAQ)_](pages/faq.md#frequently-asked-questions-faq)</a>
+ <a name=listabbreviations>[_Standard List of Abbreviations_](pages/naming_and_describing.md#appendix-a-standard-list-of-abbreviations)</a>
+ <a name=listcolumnnames>[_Standard List of Column Names_](pages/naming_and_describing.md#appendix-b-standard-list-of-column-names)</a>

[RETURN TO TOP][1] 

-----------------------------------------------------------

## RELATED STANDARDS AND RESOURCES

The following links provide related standards and resources for a successful DataBC Program project. 

+ <a name = ocio>[_OCIO Core Policy Chapter 12_](https://www2.gov.bc.ca/gov/content?id=BAA776C61B934ADA95F42CE503D2784F)</a>
+ <a name=governance>[_Data Governance_](pages/data_governance.md#data-governance)</a>
+ <a name=opendata>[_Open Data_](pages/open_data.md#open-data)</a>
+ <a name=geocoding>[_Address and Geocoding Standards_](pages/address_and_geocoding_standards.md#address-and-geocoding-standards)</a>
+ <a name=metadata>[_Metadata Standards_](pages/metadata_standards.md#metadata-standards)</a>

[RETURN TO TOP][1] 

-----------------------------------------------------------
## HOW TO USE THIS SITE

This section is "under construction".  The page is intended to serve as a launch pad for accessing content describing everything a person needs to know to use the services of the DataBC program.  We are soft-launching this site and would like feedback from visitors on what their role is (vendor, data manager, custodian, data seeker, Catalogue contributor, etc.) and what sections they found most useful, and what sections lacked the clarity or content they need.

#### Which Sections Should I Read?

Which sections of this site will be of most use to you depends on what you want to do:

+ If you are a data custodian or steward, you will be interested in ...
+ If you are a data provider ...
+ If you are a vendor preparing delivery kits for the BC Geographic Warehouse ...
+ If you are a systems developer building a system to run on the DataBC DBC platform ...

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM][2]

-------------------------------------------------------

[1]: #publishing-data-to-the-databc-program
[2]: index.md#publishing-data-to-the-databc-program
