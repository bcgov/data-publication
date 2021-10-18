---
layout: default
title: Resource Management
nav_order: 333
parent: How to use the API
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

# RESOURCE MANAGEMENT USING THE BC DATA CATALOGUE API 

**Corresponds to the Beta BC Data Catalogue release that will go to production soon.**

For the classic catalogue specific user pages see [BCDC Classic Workflow](https://bcgov.github.io/data-publication/pages/dps_bcdc_classic_w.html).

-------------

|**AUDIENCE**|
|:---:|
| *Metadata Editors* |
| *Metadata Admin* |

## Table of Contents
+ [**HOW TO MANAGE RESOURCES USING THE CATALOGUE API**](#how-to-manage-resources-using-the-catalogue-api)
	+ [How to create a resource with the API](#how-to-create-a-resource-with-the-api)
	+ [How to update a resource with the API using resource_update](#how-to-update-a-resource-with-the-api-using-resource_update)
	+ [How to update a resource with the API using resource_path](#how-to-update-a-resource-with-the-api-using-resource_patch)


-----------------------

## HOW TO MANAGE RESOURCES USING THE CATALOGUE API

To use the Catalogue API to manage and create metadata records one must be an editor/publisher. Review [How to Become a Provider to the Catalogue](dps_bcdc_w.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE) for more information.

### How to create a resource with the API

* Listed are all mandatory fields but there are other fields that can be populated and encourage that they are.

```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'
host = 'catalogue' 
ckan = ckanapi.RemoteCKAN('https://{host}.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_create(
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
### How to update a resource with the API using resource_update

* All mandatory fields must be included to use this function.
* Recommend reviewing the json schema for a listing of all available fields and if mandatory or not.
* The following is an example of loading a resource to the catalogue itself and fields defined for the Dataset/Tabular (bcdc_type="document"). Geographic Datasets require more fields.


```
import ckanapi

# host production = 'catalogue'; test = 'cat'
host = 'catalogue' 
ckan = ckanapi.RemoteCKAN('https://{host}.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_update(
        id='RESOURCE-ID-TO-UPDATE-HERE',
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

### How to update a resource with the API using resource_patch

* Is used to update just specific fields or the resource itself if .

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

[RETURN TO TOP][1]

[1]: #resource-management-using-the-bc-data-catalogue-api
