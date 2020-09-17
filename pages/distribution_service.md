# DISTRIBUTION SERVICE

This document provides a set of procedures and best practices around downloading data that is stored in the BC Geographic Warehouse (BCGW) and exported out using the following tools: the BC Data Catalogue (BCDC) and iMapBC.

+ [_The BC Geographic Warehouse (BCGW)_](https://www2.gov.bc.ca/gov/content?id=18B291A12B4F42EA98169892F4B46D61)
+ [_iMapBC_](https://maps.gov.bc.ca/ess/hm/imap4m/?)
+ [_The BC Data Catalogue (BCDC)_](https://catalogue.data.gov.bc.ca)

-----------------------
## Table of Contents
+ [**HOW TO ORDER DATA**](#HOW-TO-ORDER-DATA)
	+ [How to Order Data Using the BC Data Catalogue](#How-to-Order-Data-Using-the-BC-Data-Catalogue)
	+ [How to Order Data Using iMapBC](#How-to-Order-Data-Using-iMapBC)
	+ [Form Details](#Form-Details)
+ [**EMAIL NOTIFICATIONS:**](#EMAIL-NOTIFICATIONS)
+ [**AREA OF INTEREST DETAILS**](#AREA-OF-INTEREST-DETAILS)
	+ [AOI Selector](#AOI-Selector)
	+ [Zipped Shapefile](#Zipped-Shapefile)
	+ [Mapsheet](#Mapsheet)
+ [**FAQ**](#FAQ)
-----------------------

# Audience

This document is meant for people who want to download data from the BCDC, aka the Catalogue, and iMapBC using DataBC's Distribution Service. This document does not contain any DataBC Program internal operational information.

If you are interested in making data available via this service, head over to [Before you start](pages/before_you_start.md#before-you-start) and the [Publishing data to the DataBC Program](pages/publishing-data-to-the-databc-program.md) or the [FAQ](pages/faq.md#Downloading-data-from-the-BC-Geographic-Warehouse) pages.

# Purpose

The contents of this space is to assist data seekers to download data from the BCGW.

-----------------------------------------------------------

## HOW TO ORDER DATA

**Recommendations**:
* Determine the security profile for the dataset that you want to download, as this will dictate the exact procedure you need to follow. Using the BC Data Catalogue, refer to the **Who can download this dataset?** field in the **Access & Security** section, as that will identify what security profile the dataset is configured for. Note that you may need to log in (with your government IDIR credentials) to see the Catalogue records for all datasets for more information.


### Using BC Data Catalogue (BCDC)

**Recommendations**:
* In the BC Data Catalogue always refer to the **Who can download this dataset?** field in the **Access & Security** section, as that will identify what security profile the dataset is configured for.
* If you want to bundle together the download of a few datasets, follow the steps below and don't close the popup that appears; rather, after filling out the form for the first dataset, navigate to the next dataset you want to add.
+ If you are a government employee with an IDIR, log into the Catalogue first as some records are only visible when logged in.
+ If you **are not** a government employee but do have a business BCeID, there is no need to log into the Catalogue.  You may be prompted for your BCeID credentials when you attempt the download; this depends on the security profile for the dataset.

For BCGW data that has been configured for download, the Catalogue record will have a resource with the title **BC Geographic Warehouse Custom Download**.
1. Either Click the:
    1. **Explore** button for more information about the resource or
        1. Click the **Access/Download** button.
    1. **Explore** button down arrow to bypass the more information about the resource
        1. Select the **Access/Download** option.
1. If you are requesting a secure dataset and you have not logged in you will be prompted to log in using your IDIR or Business BCeID and password.
    + The BCeID option is the default, so to use an IDIR click the **IDIR** button to the right.
1. Skip to [Form Details](#Form-Details)

### Using iMapBC

1. iMapBC can be used to order spatial data (data that can be displayed on a map).  For non-spatial (tabular) data you will need to use the procedures described [above](#how-to-order-data-using-the-bc-data-catalogue).
1. Determine whether access to the dataset is secured, using the procedure described [above](#how-to-order-data).
1. Use the appropriate link to start iMapBC:
   1. Public: [https://maps.gov.bc.ca/ess/hm/imap4m/?](https://maps.gov.bc.ca/ess/hm/imap4m/?)
   2. Secure: [https://arcmaps.gov.bc.ca/ess/hm/imap4m/?](https://arcmaps.gov.bc.ca/ess/hm/imap4m/?. You will be prompted for your IDIR or Business BCeID credentials.
1. View the layers you want to download, using the **I Want to ... Add Provincial Layers** option.
1. Select the **Export / Provincial Layer Download** menu option, and click the **Prepare Order** button. 
1. Skip to [Form Details](#Form-Details).
1. A YouTube video describing this process can be watched [here](https://www.youtube.com/watch?v=kkui5GQzB3E).

### Form Details

Both the BCDC and iMapBC present a pop-up form into which you need to specify download parameters:+* + ***Coordinate System***, 
+ ***Area of Interest (AOI)***,
    + If a dataset is larger than 2GB an AOI will be required using one of the following:
        + **Custom AOI**
        + If a feature has too many vertices it will use the bounding box of the area.
            + **AOI Selector**
                1. Click the **Draw a Custom AOI** and a special tool will open up.
                1. Choose a shape to draw an AOI over the map (a rectangle is the simplest)
                1. Click the **Next** button to take you back to the order page.
            + **Zipped Shapefile**
                1. Click the **Browse...** button.
                1. Navigate to the zipped shapefile, which should contain files with extensions like, but not limited to, .shp, .shx, .dbf.
                1. Click the **Okay** button.
        + **GeoMark**
            + See this [page](https://www2.gov.bc.ca/gov/content?id=F6BAF45131954020BCFD2EBCC456F084) for more info.
        + **Mapsheet**
            + If you do not know what mapsheet the area you want to select is in, you can use this direct link to identify the mapsheet number in [iMapBC](https://maps.gov.bc.ca/ess/hm/imap4m/?catalogLayers=667,668). 

            Accepted values are, as examples,:
            + **82F** (a single mapsheet), 
            + **82F044** (a single letter block)
            + **82F, 82F** (one or more mapsheets and/or letter blocks separated by commas)
    + **Clipping: _On_**
        + All data features that overlap the Area of Interest (AOI) will be included, but each will be clipped so that they do not extend outside the AOI.
    + **Clipping: _Off_**
        + All data features that overlap the Area of Interest (AOI) will be included, in their entirety. They will not be clipped to the AOI boundary.
+ ***Format***
    + Available: Shapefile (.shp), File Geodatabase (.fgdb), CSV and GeoJSON.
+ ***Included Layers***
    + If a dataset is no longer desired click the **red X**.
+ ***Email address*** where to send notification.
+ ***Terms and Conditions*** check box.

1. Click the **Submit Order** button.
    1. Click the **Continue** button.

## EMAIL NOTIFICATIONS
1. An email will be sent that the order has been received by the system.
    + _Your order 2093822 has been submitted_
1. An email will be sent that the order has been assembled once the system has processed the order.
    + _Your order 2093822 has been assembled_
        + This will have a link to a place to pick up the order.
        + If this order isn't picked up within a week, then it will be deleted and the order will need to be resubmitted.
        + Some of the datasets in the BCGW include no geometry/spatial features, these will be exported as a csv alongside the format selected.

## AREA OF INTEREST OPTIONS

## FAQ

[RETURN TO TOP][1]

[RETURN TO PUBLISHING METADATA AND DATA TO THE BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #publishing-data-to-the-databc-program
[2]: publishing-data-to-databc.md#publishing-data-to-the-databc-program


_