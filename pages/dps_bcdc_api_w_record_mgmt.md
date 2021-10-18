---
layout: default
title: Record Management
nav_order: 332
grand_parent: BC Data Catalogue
parent: How to use the API
has_children: false
has_toc: false
---

# RECORD MANAGEMENT USING THE BC DATA CATALOGUE API

**Corresponds to the Beta BC Data Catalogue release that will go to production soon.**

For the classic catalogue specific user pages see [BCDC Classic Workflow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

-------------


|**AUDIENCE**|
|:---:|
| *Metadata Editors* |
| *Metadata Admin* |

## Table of Contents
+ [**HOW TO MANAGE PACKAGES USING THE CATALOGUE API**](#how-to-manage-packages-using-the-catalogue-api)
	+ [How to create a record with the API](#how-to-create-a-resource-with-the-api)
	+ [How to update a record with the API using package_patch](#how-to-update-a-resource-with-the-api-using-package_patch)
	+ [How to get the organization ID with the organization name](#how-to-get-the-organization-id-with-the-organization-name)

-----------------------

## HOW TO MANAGE RECORD USING THE CATALOGUE API

### How to create a package with the API

* Listed are all mandatory fields but there are other fields that can be populated and encourage that they are.

**Currently modifying from creating a resource**

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

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #record-management-using-the-bc-data-catalogue-api
