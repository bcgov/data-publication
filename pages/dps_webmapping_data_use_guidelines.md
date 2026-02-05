---
layout: default
title: Web Mapping Applications - Data Use Guidelines
parent: Web-based Mapping
nav_order: 825
has_toc: false
---


The guidelines in this page apply to all government web mapping applications. The information provided should not be considered exhaustive, and as such are intended to provide information only for supporting the appropriate use of data within web mapping applications.

Data Sources
------------

### BC Government Data

BC Government data that are publicly available and consumed in web mapping applications are recommended to be sourced from the BC Geographic Warehouse (BCGW) database and accessed via public web mapping services. Secure BC government (IDIR restricted) data can be accessed by requesting an application-specific proxy account.

#### Public Web Mapping Services

Public Web Services are open and do not require an account for access. There are currently two methods of accessing BC government data in public web mapping services:

1.  BCGW-sourced dynamic GeoServer Web-mapping Service (WMS) or Web Feature Service (WFS)

2.  BCGW-sourced dynamic ArcGIS Server REST Service via ArcGIS Online

For more details on how to use these see [Web mapping services](https://www2.gov.bc.ca/gov/content?id=95D78D544B244F34B89223EF069DF74E "https://www2.gov.bc.ca/gov/content?id=95D78D544B244F34B89223EF069DF74E").

#### BCGW Database Access (Proxy)

Proxy accounts for direct access to the BCGW database [can be requested](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3/create/13 "https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3/create/13") for application access, and incur an annual fee. Currently, this is the only method of application access for secure (IDIR restricted) government data.

#### Secure Web Mapping Services (IDIR restricted)

Secure Web Mapping Services are not available at this time.

#### License Considerations

1.  Data published under the [Open Government Licence - British Columbia](https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61 "https://www2.gov.bc.ca/gov/content?id=A519A56BC2BF44E4A008B33FCF527F61") (OGL-BC) can be used with only a few conditions.

2.  Data published under [Copyright](https://www2.gov.bc.ca/gov/content?id=1AAACC9C65754E4D89A118B875E0FBDA "https://www2.gov.bc.ca/gov/content?id=1AAACC9C65754E4D89A118B875E0FBDA") (Access Only): The Intellectual Property Program (IPP) recommends internal to government users of Access Only datasets to reach out to the contact listed in the related [metadata record](https://catalogue.data.gov.bc.ca/ "https://catalogue.data.gov.bc.ca/"). It is a courtesy (not a requirement), but helps to ensure the custodian ministry is aware of how their dataset will be used. This is important because, depending on the dataset and the client's intended use, the custodian ministry may need to advise the client their intended use is not appropriate, the dataset is not up to date (or may be in the process of being updated), the dataset has deficiencies the client needs to be aware of, or other concerns the client would not be aware of.

### External Data

Data that is external to BC Government can be sourced by any means. The data provider's terms of use and licensing must be followed.

Metadata
--------

In alignment with the Data Management Policy direction on high-value data and data of public interest, BC Government datasets used in a public or government accessible web-based mapping application, must have a published metadata record in the BC Data Catalogue.

Layer Presentation
------------------

The Data Systems and Services (DSS) branch manages an internal application (Mapping Presentation and Configuration Manager or MPCM) that converts ESRI layer file (.lyr) property configurations from a binary format to a JSON format for use in other applications.

Where data are sourced via a direct proxy account to the BCGW, the layer configurations from MPCM should be used. This ensures that standard symbology, scale-dependency, data source, and/or other configuration properties that may be set to provide for optimal display and performance are respected. This can be accessed from:

1.  MPCM Dynamic JSON - <https://apps.gov.bc.ca/pub/mpcm/services/catalog/PROD>

Where data are sourced via a DSS web service, standard layer presentations are recommended to not be modified. Where adjustments are made, DSS will not be accountable for supporting display or performance-based issues.

Map Data Elements
-----------------

All web maps must include the following data-related elements:

1.  Basemap

2.  Legend

3.  Layer List

4.  Data Sources

    1.  BC Data Catalogue Metadata Link (BC government data) or

    2.  External Metadata Link (non-BC government data)

Review
------

All data served in a public or government web mapping application must be reviewed for compliance with government legislation and policy, prior to publication.

At minimum, a review will ensure the application:

-   consumes data appropriate for publication

-   contains references to data sources