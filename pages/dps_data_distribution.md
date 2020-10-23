---
layout: default
title: Data Distribution
nav_order: 110
parent: Data Publication Services
has_toc: false
---

DATA PUBLICATION SERVICES
# DATA DISTRIBUTION SERVICE

This document provides a set of procedures and best practices around downloading data that is stored in the BC Geographic Warehouse (BCGW) and exported out using the following tools: the BC Data Catalogue (BCDC) and iMapBC.

+ [_The BC Geographic Warehouse (BCGW)_](https://www2.gov.bc.ca/gov/content?id=18B291A12B4F42EA98169892F4B46D61)
+ [_iMapBC_](https://maps.gov.bc.ca/ess/hm/imap4m/?)
+ [_The BC Data Catalogue (BCDC)_](https://catalogue.data.gov.bc.ca)

-----------------------
## Table of Contents
+ [**HOW TO ORDER DATA**](#how-to-order-data)
	+ [Using BC Data Catalogue](#using-bc-data-catalogue)
	+ [Using iMapBC](#using-imapbc)
	+ [Current Order Details](#current-order-details)
	+ [Past Order Submissions](#past-order-submissions)
+ [**EMAIL NOTIFICATIONS**](#email-notifications)
+ [**FREQUENTLY ASKED QUESTIONS**](#frequently-asked-questions)

-----------------------

# Audience

This document is meant for people who want to download data from the BCDC, aka the Catalogue, and iMapBC using DataBC's Distribution Service. This document does not contain any DataBC Program internal operational information.

If you are interested in making data available via this service, head over to [Before you start](pages/before_you_start.md#before-you-start) and the [Publishing data to the DataBC Program](pages/publishing-data-to-the-databc-program.md) or the [FAQ](pages/faq.md#Downloading-data-from-the-BC-Geographic-Warehouse) pages.

# Purpose

The contents of this space is to assist data seekers to download data from the BCGW.

-----------------------------------------------------------

## HOW TO ORDER DATA
+ In the BC Data Catalogue always refer to the **Who can download this dataset?** field in the **Access & Security** section, as that will identify what security profile the dataset is configured for.
    + **Note** that you may need to log in (with your government IDIR credentials) to see the Catalogue records for all datasets for more information.

### Using BC Data Catalogue
+ To group multiple datasets in a single order do not close the pop-up for the first dataset but navigate to the next dataset you wish to add.
+ If you are a government employee with an IDIR, log into the Catalogue first as some records are only visible when logged in.
+ Business BCeID users can not log into the Catalogue but will be prompted for credentials at time of download, if the security is a requirement.

BCGW configured resources should have the title **BC Geographic Warehouse Custom Download**.
1. Either click the:
    1. **Explore** button for more information about the resource or
        1. Click the **Access/Download** button.
    1. **Explore** button down arrow to bypass the more information about the resource
        1. Select the **Access/Download** option.
1. If you are requesting a secure dataset and you have not logged in you will be prompted to log in using your IDIR or Business BCeID and password.
    + The BCeID option is the default, so to use an IDIR click the **IDIR** button to the right.
1. Next, skip to [Current Order Details](#Current-Order-Details) for final steps.

### Using iMapBC
+ iMapBC can be used to order spatial data (data that can be displayed on a map). 
+ For non-spatial (tabular) data you will need to use the procedures described [in using the Catalogue](#how-to-order-data-using-the-bc-data-catalogue).
+ Determine whether access to the dataset is secured, using the procedure described [in the Catalogue](#how-to-order-data).

Follow the steps below or watch a video [here](https://www.youtube.com/watch?v=kkui5GQzB3E).
1. Use the appropriate link to start iMapBC:
   1. [Public iMapBC](https://maps.gov.bc.ca/ess/hm/imap4m/)
   2. [Secure iMapBC](https://arcmaps.gov.bc.ca/ess/hm/imap4m/) (requires IDIR or Business BCeID)
1. Click the **I want to...** blue button to select datasets to visualize and/or download.
1. Select the **Add Provincial Layers** menu option.
1. Navigate and select the check box of desired datasets
1. Click the **Export** tab along the top toolbar.
1. Select the **Provincial Layer Download** option.
    1. Toggle off datasets that are not to be downloaded.
1. Click the **Prepare Order...** button. 
1. Next, skip to [Current Order Details](#Current-Order-Details) for final steps.

### Current Order Details

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
                1. Navigate to the zipped shapefile, which should contain files with extensions like, but not limited to: shp, shx, dbf.
                1. Click the **Okay** button.
        + **GeoMark**
            + See this [page](https://www2.gov.bc.ca/gov/content?id=F6BAF45131954020BCFD2EBCC456F084) for more info.
        + **Mapsheet**
            + If you do not know what mapsheet the area you want to select is in, you can use this direct link to identify the mapsheet number in [iMapBC](https://maps.gov.bc.ca/ess/hm/imap4m/?catalogLayers=667,668). 

            For accepted value examples:
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

### Past Order Submissions
When logged in to make an order to download data using this service, those past orders are retained and visible when selecting a new order.

1. Click the **Past Orders** tab.
1. Click the order details to expand the order details.
1. Click the **Reorder** button to request a new order with those datasets listed.

## EMAIL NOTIFICATIONS
1. An email will be sent that the order has been received by the system.
    + _Your order 2093822 has been submitted_
1. An email will be sent that the order has been assembled once the system has processed the order.
    + _Your order 2093822 has been assembled_
        + This will have a link to a place to pick up the order.
        + If this order isn't picked up within a week, then it will be deleted and the order will need to be resubmitted.
        + Some of the datasets in the BCGW include no geometry/spatial features, these will be exported as a csv alongside the format selected.


## FREQUENTLY ASKED QUESTIONS
[_Frequently Asked Questions Home Page_](pages/faq.md#PUBLISHING-METADATA-RECORDS-TO-THE-BC-DATA-CATALOGUE)

[RETURN TO TOP][1]

[RETURN TO PUBLISHING DATA TO THE DATABC PROGRAM > TIPS AND TRICKS][2]

-------------------------------------------------------

[1]: #distribution-service
[2]: ../index.md#tips-and-tricks
