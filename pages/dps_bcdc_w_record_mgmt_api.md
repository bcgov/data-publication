---
layout: default
title: Record Mgmt via API
nav_order: 332
grand_parent: BC Data Catalogue
parent: Record Management
has_children: false
has_toc: false
---

# USING THE BC DATA CATALOGUE API FOR RECORD MANAGEMENT

**This document has been uppdated to correspond with the BC Data Catalogue Beta release that will go to production soon.**

For the classic catalogue pages see [BCDC Classic Worklfow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

-------------

The BC Data Catalogue is built using an open source data portal software called [CKAN](https://github.com/ckan/ckan/blob/master/README.rst). Some users may prefer to use the API to manage thier content in the BC Data Catalogue, while others may prefer to use the applicaiton itself. This page provides guidance on the use of the Catalogue API to manage metadata and data within the BC Data Catalogue.

|**AUDIENCE**|
|:---:|
| *Metadata Editors* |
| *Metadata Admin* |

## Table of Contents
+ [**ARCHITECTURE**](#architecture)
+ [**HOW TO MANAGE PACKAGES USING THE CATALOGUE API**](#how-to-manage-packages-using-the-catalogue-api)
	+ [How to create a record with the API](#how-to-create-a-resource-with-the-api)
	+ [How to update a record with the API using package_patch](#how-to-update-a-resource-with-the-api-using-package_patch)
	+ [How to get the organization ID with the organization name](#how-to-get-the-organization-id-with-the-organization-name)
	+ [How to get package names and package IDs within an organization](#how-to-get-package-names-and-package-ids-within-an-organization)
	+ [How to get the resource names and resource IDs withing a package](#how-to-get-the-resource-names-and-resource-ids-withing-a-package)

-----------------------

## ARCHITECTURE

The base product on which BCDC is dependent is https://github.com/ckan/ckan - it is an open source application that uses extensions in a plug-in architecture to extend and customize it.

Our main customization is done through a theme extension that we manage https://github.com/bcgov/ckanext-bcgov.

The application is supported by technical infrastructure and that has a number of integrations with other systems through a combination of database and API level connections.

## HOW TO MANAGE  RESOURCES USING THE CATALOGUE API

To use the Catalogue API to manage and create metadata records one must be an editor/publisher. Review [How to Become a Provider to the Catalogue](dps_bcdc_w.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE) for more information.

**Name of the org:**

To obtain the GUID sub-org it requires the title name of the org

1. **Option 1**:
	1. Navigate to a record you manage
	1. Click on the live link of the sub-org or branch name
	1. Copy the text in the url, e.g, "information-management-cfd" from https://catalogue.data.gov.bc.ca/organization/information-management-cfd
1. **Option 2**:
	1. Open up the Catalogue Organizations tree
	1. Navigate and click on the sub-org/branch name
	1. Copy the text in the url, e.g, "information-management-cfd" from https://catalogue.data.gov.bc.ca/organization/information-management-cfd

**Your API Key**:
1. Log into the Catalogue
1. Click on the hamburger/pancake in the upper right
2. Click on *Account Settings*
3. Bottom left corner is your personal API Key

The following python syntax is used as an example from a specific organization

### How to create a package with the API

* Listed are all mandatory fields but there are other fields that can be populated and encourage that they are.

Currently modifying from creating a resource
```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'
host = 'catalogue' 
ckan = ckanapi.RemoteCKAN('https://{host}.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.package_create(
        package_id='YOUR-PACKAGE-ID-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        name="my-resource-name-updated",
	bcdc_type="document",
	resource_update_cycle="monthly",
	format="csv",
	resource_storage_location="catalogue data store",
	resource_type="data",
	resource_access_method="direct access")


print(resp)
```
### How to update a package with the API using package_patch

* Is used to update just specific fields within a package.

Currently modifying from updating a resource

```
import ckanapi

# host production = 'catalogue'; test = 'cat'
host = 'catalogue' 
ckan = ckanapi.RemoteCKAN('https://{host}.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_patch(
        id='RESOURCE-ID-TO-UPDATE-HERE',
        name="my-resource-name-updated",
	description="my-resource-descrition-update")


print(resp)
```

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

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #using-the-bc-data-catalogue-api-for-record-management
