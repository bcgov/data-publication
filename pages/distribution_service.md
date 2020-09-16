# DISTRIBUTION SERVICE

This document provides a set procedures and best practices around downloading data that is stored in the BC Geographic Warehouse (BCGW) and exported out the following tools: the BC Data Catalogue (BCDC) and iMapBC.

+ [_The BC Geographic Warehouse (BCGW)_](https://www2.gov.bc.ca/gov/content?id=18B291A12B4F42EA98169892F4B46D61)
+ [_iMapBC_](https://maps.gov.bc.ca/ess/hm/imap4m/?)

-----------------------
## Table of Contents
+ [**How to Order Data**](#HOW-TO-ORDER-DATA)
    + [**From BCDC**](#From-BCDC)
    + [**From iMapBC**](#From-iMapBC)
    + [**Form Details**](#Form-Details)
+ [**Email Notifications**](#Email-Notifications)
+ [**Area of Interest Details**](#Area-of-Interest-Details)
* [**FAQ**](#FAQ)
-----------------------

# Audience

This document is meant for people who want to download data from BCDC, aka the Catalogue and iMapBC using DataBC's Distribution Service. It does not contain any DataBC Program internal operational information.

If you are interested in making data available via this service, head over to [Before you start](pages/before_you_start.md#before-you-start) and the [Publishing data to the DataBC Program](pages/publishing-data-to-the-databc-program.md) or the [FAQ](pages/faq.md#Downloading-data-from-the-BC-Geographic-Warehouse) pages.

# Purpose

The contents of this space is to assist data seekers download data from the BCGW.

-----------------------------------------------------------

## How to Order Data

**Recommendations**:
* Always refer to the **Access & Security** section as to **Who can download this dataset?** as that will identify what security profile a dataset is configured for.
* If you want to bundle a few datasets together follow the following steps and then don't close the popup that appears but just navigate to the next dataset you want to add.
* If you are a government employee with an IDIR, recommend logging into the catalogue first as some records are only visible when logged in.

### From BCDC
For each metadata record in the Catalogue for data in the BCGW that is configured for download there will be a resource with the title **BC Geographic Warehouse Custom Download**
1. Either Click the:
    1. **Explore** button for more information about the resource or
        1. Click the **Access/Download** button.
    1. **Explore** button down arrow to bypass the more information about the resource
        1. Select the **Access/Download** option.
1. If a secure dataset and not logged in you will be prompted to log in using your IDIR or Business BCeID and password.
    * The BCeID option is the default, so to use an IDIR click the **IDIR** button to the right.
1. Skip to [Form Details](#Form-Details)

### From iMapBC
Link to iMapBC documentation?
1. Skip to [Form Details](#Form-Details)

### Form Details
Either from BCDC a pop-up will need to filled out or a panel in iMap:
* ***Coordinate System***, 
* ***Area of Interest (AOI)***,
    * If a dataset is larger than 2GB and AOI will be required using one of the following:
        * **Custom AOI**: If a feature has too many vertices it will use the bounding box of the area.
            * **AOI Selector**: See the [following](#AOI-Selector) for more info.
            * **Zipped Shapefile**: See the [following](#Shapefile) for more info.
        * **GeoMark**: See this [page](https://www2.gov.bc.ca/gov/content?id=F6BAF45131954020BCFD2EBCC456F084) for more info.
        * **Mapsheet**: See the [following](#Mapsheet) for more info and examples.
    * **Clipping: _On_**: All data features that overlap the Area of Interest (AOI) will be included, but each will be clipped so that they do not extend outside the AOI.
    * **Clipping: _Off_**: All data features that overlap the Area of Interest (AOI) will be included, in their entirety. They will not be clipped to the AOI boundary.
* ***Format***: Available: Shapefile (.shp), File Geodatabase (.fgdb), CSV and GeoJSON.
* ***Included Layers***: If a dataset is no longer desired click the **red X**.
* ***Email address***
* ***Terms and Conditions*** check box

1. Click the **Submit Order** button.
    1. Click the **Continue** button.

## Email Notifications:
1. An email will be sent that the order has been received by the system.
    * _Your order 2093822 has been submitted_
1. An email will be sent that the order has been assembled once the system has processed the order.
    * _Your order 2093822 has been assembled_
        * This will have a link to a place to pick up the order.
        * If this order isn't picked up within a week, then it will be deleted and the order will need to be resubmitted.
        * Some of the datasets in the BCGW include no geometry/spatial features, these will be exported as a csv along side the format selected.

## Area of Interest Details
 
### AOI Selector
1. Click the **Draw a Custom AOI** and the tool will open up.
1. Choose a shape to draw an AOI over the map (a rectangle is the simplest)
    1. Click the **Next** button to take you back to the order page.
### Zipped Shapefile
1. Click the **Browse...** button.
1. Navigate to the zipped shape file, that should contain files with extensions like but not limited to: .shp, .shx, .dbf.
1. Click the **Okay** button.
### Mapsheet
* If you do not know what mapsheet the area you want to select is in, you can use this direct link to identify the mapsheet number in [iMapBC](https://maps.gov.bc.ca/ess/hm/imap4m/?catalogLayers=667,668). 

Accepted values are:
* **82F** (a single mapsheet), 
* **82F044** (a single letter block)
* **82F, 82F** (one or more mapsheets and/or letter blocks separated by commas)
## FAQ

[RETURN TO TOP][1]

[RETURN TO PUBLISHING METADATA AND DATA TO THE BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #publishing-data-to-the-databc-program
[2]: publishing-data-to-databc.md#publishing-data-to-the-databc-program


_