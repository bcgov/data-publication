_This page is intended to be a resource that describes the current, high-level state flow of downstream data visualization._

At the heart of all of BC's widely available data access services is the BC Geographic Warehouse.  The Mapping Presentation Configuration Manager (MPCM) is a repository of Esri LYR format files that define the desired graphic presentation of data layers when consumed in a map using Desktop software such as ArcMap **or** in a web mapping application.

.LYR file format is a binary file format that is proprietary to Esri.  The MPCM application is used by DataBC Data Administrators/Architects as part of the data publication process.  With input from the Data Custodian or Subject Matter Experts representatives, LYR files are created so that a common optimal symbology is provided in the Corporate Layer File Library for ArcMap users.  In addition, LYR files are imported into MPCM and Esri libraries within the product allow the for extraction of critical presentation information which is then loaded into a database schema model and exposed via an ArcGIS Server-based data service hosted by DataBC Mapping Services.  This is effectivey an empty map service that is dynamic - that is to say that layers can be called in by a layerID and be made available to web mapping applications such as iMapBC.

The MPCM application service which lists all of the available layers and their corresponding IDs can be viewed here:

https://apps.gov.bc.ca/pub/mpcm/services/catalog/PROD

Specifics about a given layer can be found by appending a '/' and a layerID to the URL as such:

https://apps.gov.bc.ca/pub/mpcm/services/catalog/PROD/2/

**MPCM to Geoserver (WMS/WFS)**

Unless we are in an IT change freeze (e.g. typical Winter Holiday period) Geoserver services creation script runs on a schedule: 

Delivery on Tuesday morning: start time is 2-3 AM (can take up to 3 hours to run).

Test on Wednesday morning: start time is 2-3 AM (can take up to 3 hours to run).    

Production on Thursday: start time is 2-3 AM (can take up to 3 hours to run). 

If unsure of whether something has been run, one can check Jenkins as that is the mechanism for running the script.

The script takes what is in MPCM Production/PROD stage and translates the content into Style Layer Descriptors (SLDs).  Sometimes this translation is straight forward and needs no intervention but there are cases where the translation is suboptimal and manual intervention is required to correct/enable a layer in Geoserver.

**ArcGIS Online “mini-maxl” Services**

When Production Geoserver is confirmed to be viable, the mini-maxl script is run for Delivery, Test, and Production.  This is currently run on demand but we intend to automate that in the future.

Only publicly accessible layers are added to the schema based services.

You can view last run info in Jenkins

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

KML is a legacy artifact.  Not all layers are provided in KML format??  KML is created on demand by a script when the Geoserver build is run.

**_Need Assistance?_**

When issues are identified or an on demand run is needed, please create a JSM ticket so that it lands in MAP’s queue and can be assessed for urgency and actioned in due course.
