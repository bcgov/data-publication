_This page is intended to be a resource that describes the current, high-level state flow of downstream data visualization._

**MPCM to Geoserver (WMS/WFS)**

Unless we are in a change freeze (e.g. typical Winter Holiday period) Geoserver services creation script runs on a schedule: 

Delivery on _______________   

Test on _______________      

Production on _______________  

If you’re unsure of whether something has been run, you can always check Jenkins as that is the mechanism for running the script.

The script takes what is in MPCM Production/PROD stage and translates the content into Style Layer Descriptors (SLDs).  Sometimes this translation is straight forward and needs no intervention but there are cases where the translation is suboptimal and manual intervention is required to correct/enable a layer in Geoserver.

AGO “mini-maxl” Services

When Production is confirmed to be viable, the mini-maxl script is run.  This is currently on demand but we intend to automate that in the future.

Only publicly accessible layers are created in AGO by this process.

You can see last run info in Jenkins and search for an Item Details page, e.g.

Regional Districts Item ID page in AGO: https://governmentofbc.maps.arcgis.com/home/item.html?id=bb7f0c48789943fbb6e3a0afb9fd4e01Created: Mar 19, 2019    Updated: Aug 20, 2021Service URL (add ‘?f=pjson’ as the HTML view is disabled): https://maps.gov.bc.ca/arcserver/rest/services/whse/bcgw_pub_whse_legal_admin_boundaries/MapServer/16?f=pjson

KML 

KML is a legacy artifact.  Not all layers are provided in KML format.  KML is created on demand by a script(?)

Need Assistance?

When issues are identified or an on demand run is needed, please create a JSM ticket so that it lands in MAP’s queue and can be assessed for urgency and actioned in due course.
