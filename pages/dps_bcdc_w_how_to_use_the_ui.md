---
layout: default
title: Content Mgmt/Use - UI
nav_order: 33
parent: BC Data Catalogue
has_children: true
has_toc: false
---

# **BC Data Catalogue User Interface (UI)**

[Resource Management](./dps_bcdc_w_resource_mgmt_ui.md)

+ There are four defined resource types: 
    + [Application](https://bcgov.github.io/data-publication/pages/dps_bcdc_w_resource_mgmt_ui.html#application)
    + [Document/Tabular Data](https://bcgov.github.io/data-publication/pages/dps_bcdc_w_resource_mgmt_ui.html#document-and-tabular-data)
    + [Geographic Data](https://bcgov.github.io/data-publication/pages/dps_bcdc_w_resource_mgmt_ui.html#geographic-data)
    + [Web Service/API](https://bcgov.github.io/data-publication/pages/dps_bcdc_w_resource_mgmt_ui.html#webservice-and-api)

--------
## BC Data Catalogue User Advanced Search

Within the search bar, once can pass queries

**Records published during a certain date range** (deprecated)

```record_publish_date:[2021-01-01T00:00:00.000Z TO 2022-01-01T00:00:00.000Z]```

**Records published as the Open Data Licence - British Columbia**

```license_id:2```

+ To find a full list of licence IDs, visit the [BCDC Licences JSON](https://github.com/bcgov/ckanext-bcgov-schema/blob/master/ckanext/bcgov_schema/bcdc_licenses.json) page on GitHub

**Object Names**

``` WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP ```

+ Search results are not exact matches 

**Combination of two**

```WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP license_id:2```
