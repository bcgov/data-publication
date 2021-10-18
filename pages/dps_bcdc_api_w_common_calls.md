---
layout: default
title: Common Calls
nav_order: 331
grand_parent: BC Data Catalogue
parent: How to use the API
has_children: false
has_toc: true
---

# COMMON CALLS USING THE BC DATA CATALOGUE API

**Corresponds to the Beta BC Data Catalogue release that will go to production soon.**

For the classic catalogue specific user pages see [BCDC Classic Workflow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

-------------

|**AUDIENCE**|
|:---:|
| *Metadata Editors* |
| *Metadata Admin* |

## Table of Contents
+ [**HOW TO GET_INFORMATION**](#how-to-get-information)
    + [**How to get your API Key**](#how-to-get-your-api-key)
    + [**How to get your organization name**](#how-to-get-you-organiation-guid)
    + [**How to get the organization ID with the organization name**](#how-to-get-the-organization-id-with-the-organization-name)
    + [**How to get package names and package IDs within an organization**](#how-to-get-package-names-and-package-ids-within-an-organization)
    + [**How to get the resource names and resource IDs withing a package**](#how-to-get-the-resource-names-and-resource-ids-withing-a-package)
+ [**COMMON CALLS**](#common-calls)
    +[**object name**](#object_name)
    +[**bcdc type**](#bcdc_type)
    +[**resource storage location**](#resource_storage_location)

To use the Catalogue API to manage and create metadata records one must be an editor/publisher. Review [How to Become a Provider to the Catalogue](dps_bcdc_w.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE) for more information.

## HOW TO GET INFORMATION

### How to get your API Key
1. Log into the Catalogue
1. Click on the hamburger/pancake in the upper right
2. Click on *Account Settings*
3. Bottom left corner is your personal API Key

### How to get your organization name
To obtain the GUID sub-org it requires the title name of the org

1. **Option 1**:
	1. Navigate to a record you manage
	1. Click on the live link of the sub-org or branch name
	1. Copy the text in the url, e.g, "information-management-cfd" from https://catalogue.data.gov.bc.ca/organization/information-management-cfd
1. **Option 2**:
	1. Open up the Catalogue Organizations tree
	1. Navigate and click on the sub-org/branch name
	1. Copy the text in the url, e.g, "information-management-cfd" from https://catalogue.data.gov.bc.ca/organization/information-management-cfd

The following python syntax is used as an example from a specific organization

### How to get the organization ID with the organization name
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

org = ckan.action.organization_show(id="information-management-cfd")
print(org['name'], org['id'])
```

### How to get package names and package IDs within an organization
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

pkgs = ckan.action.package_search(fq="owner_org:a1a9c5cc-b601-4190-b206-13ba08c54292",rows=1000)
for pkg in pkgs['results']:
    print(pkg['name'], pkg['id'])

```

### How to get the resource names and resource IDs withing a package
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

pkg_data = ckan.action.package_show(id="b67255a7-8040-43c0-935c-d74f168af215")
for resource in pkg_data['resources']:
    print(resource['name'], resource['id'])
```

## COMMON CALLS

### object_name
https://cat.data.gov.bc.ca/api/3/action/package_search?q=res_extras_object_name:WHSE_WILDLIFE_MANAGEMENT.WAA_TRAPLINE_AREAS_SP

### bcdc_type
https://cat.data.gov.bc.ca/api/3/action/package_search?q=res_extras_bcdc_type:geographic

### resource_storage_location
https://cat.data.gov.bc.ca/api/3/action/package_search?q=res_extras_resource_storage_location:bc%20geographic%20warehouse

### format
https://cat.data.gov.bc.ca/api/3/action/package_search?q=res_format:csv

-------------------------------------------------------
