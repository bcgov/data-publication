---
layout: default
title: Content Mgmt/Use - UI
nav_order: 33
parent: BC Data Catalogue
has_children: true
has_toc: false
---

## BC DATA CATALOGUE RECORD CONTENT MANAGEMENT

[Record Management](./dps_bcdc_w_resource_mgmt_ui.md)

## BC DATA CATALOGUE RESOURCE CONTENT MANAGEMENT

[Resource Management](./dps_bcdc_w_resource_mgmt_ui.md)

1. There are four defined resource types: 
    - [Application](./dps_bcdc_w_resource_mgmt_ui.md#application-resources)
    - [Document/Tabular Data](./dps_bcdc_w_resource_mgmt_ui.md#doument-and-tabular-dataset-resources)
    - [Geographic Data](./dps_bcdc_w_resource_mgmt_ui.md#geographic-dataset-resources)
    - [Webservice/API](./dps_bcdc_w_resource_mgmt_ui.md#webservice-and-api-resources)

--------
## BC DATA CATALOGUE ADVANCED SEARCH

Within the search bar, once can pass queries

**Records published during a certain date range**

```:* record_publish_date:[2021-01-01T00:00:00.000Z TO 2022-01-01T00:00:00.000Z] *:```

**Records published as the Open Data Licence - British Columbia**

```:* license_id:2 *:```

**Object Names**

```:* WHSE_ADMIN_BOUNDARIES.ADM_NR_DISTRICTS_SP *:```

**Combination of the two**

```:* record_publish_date:[2017-05-21T00:00:00.000Z TO 2021-10-21T00:00:00.000Z] license_id:2 *:```
