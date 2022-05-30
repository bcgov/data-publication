---
layout: default
title: Downstream Workflow
grand_parent: Web-based Mapping
parent: BC Maphub - Publication Workflow
nav_order: 811
has_toc: false
---

_This page is intended to be a resource that describes the current, high-level state flow of downstream data visualization._

At the heart of all of BC's widely available data access services is the BC Geographic Warehouse.  The Mapping Presentation Configuration Manager (MPCM) is a repository of Esri LYR format files that define the desired graphic presentation of data layers when consumed in a map using Desktop software such as ArcMap **or** in a web mapping application.

.LYR file format is a binary file format that is proprietary to Esri.  The MPCM application is used by DataBC Data Administrators/Architects as part of the data publication process.  With input from the Data Custodian or Subject Matter Experts representatives, LYR files are created so that a common optimal symbology is provided in the Corporate Layer File Library for ArcMap users.  In addition, LYR files are imported into MPCM and Esri libraries within the product allow the for extraction of critical presentation information which is then loaded into a database schema model and exposed via an ArcGIS Server-based data service hosted by DataBC Mapping Services.  This is effectively an empty map service that is dynamic - that is to say that layers can be called in by a layerID and be made available to web mapping applications such as iMapBC.

The Production MPCM/PROD stage service endpoint which lists all of the available layers and their corresponding IDs can be viewed here:

https://apps.gov.bc.ca/pub/mpcm/services/catalog/PROD

Specifics about a given layer can be found by appending a '/' and a layerID to the URL as such:

https://apps.gov.bc.ca/pub/mpcm/services/catalog/PROD/2

**MPCM to Geoserver (WMS/WFS)**

Geoserver builds run on a schedule. 

Delivery on Tuesday morning: start time is 2-3 AM (can take up to 3 hours to run).

Test on Wednesday morning: start time is 2-3 AM (can take up to 3 hours to run).    

Production on Thursday: start time is 2-3 AM (can take up to 3 hours to run). 

The schedules can be enabled and disabled.  A schedule may be disabled when there is a change freeze. If unsure of whether something has been run, status in Jenkins can be checked as that is the mechanism for running the script.

The script takes what is in MPCM Production/PROD stage and translates the content into WMS layers.  Associated layers styles are stored in a file with an extension .sld. This translations is not perfect as the complex lyr stles are not aways translated with the amount of detail that would be seen in the lyr files. In some cases we can namually build a SLD and override the SLD with the custom style at run time.

**ArcGIS Online “mini-maxl” Services**

When the respective Geoserver builds are run and complete without errors, the mini-maxl script can run to build the assocated mini-maxl map services. This is currently run on demand but can be automated.

Only publicly accessible layers are added to the schema based services.

You can view status/last run info in Jenkins as well.

**ArcGIS Online Item Creation**

Every piece of content in ArcGIS Online has an Item Details page, e.g.

**Regional Districts**
Item ID page:

https://governmentofbc.maps.arcgis.com/home/item.html?id=bb7f0c48789943fbb6e3a0afb9fd4e01

Created: Mar 19, 2019    Updated: Aug 20, 2021

"mini-maxl" Service URL is included in the details on the Item ID page
(add ‘?f=pjson’ at the end of the supplied URL as the HTML view of the service is disabled):
https://maps.gov.bc.ca/arcserver/rest/services/whse/bcgw_pub_whse_legal_admin_boundaries/MapServer/16?f=pjson

**KML**

KML files are build as part of the respective GeoServer build.  Only public layers are built as kml files.

**_Need Assistance?_**

When issues are identified or an on demand run is needed, please create a JSM ticket so that it lands in MAP’s queue and can be assessed for urgency and actioned in due course.  Until we build out a few more options in the JIRA Service Manager to cover off Data Access Services inquiries, please use this section: https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/6
