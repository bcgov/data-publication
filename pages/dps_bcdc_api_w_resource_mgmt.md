---
layout: default
title: Resource Management
nav_order: 343
parent: Content Mgmt/Use - API
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

# BC Data Catalogue Resource API management
-------------

||**Audience** | |
|:---:|:---:|:---:|
| [*Catalogue Editors*](../glossary.html#metadata_editor) | [*Catalogue Admin*](../glossary.html#metadata_admin) | *Catalogue Developers* |

## Table of Contents
+ [**How to manage Resources using the Catalogue API**](#how-to-manage-resources-using-the-catalogue-api)
	+ [How to create a resource with the API](#how-to-create-a-resource-with-the-api)
	+ [How to update a resource with the API using resource_update](#how-to-update-a-resource-with-the-api-using-resource_update)
	+ [How to update a resource with the API using resource_patch](#how-to-update-a-resource-with-the-api-using-resource_patch)


-----------------------
**Resources**
+ See the full list of value options for drop down fields, see the [BCDC Schema](https://catalogue.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#application-resource-level-changes)

-----------------------

## How to manage Resources using the Catalogue API

To use the Catalogue API to manage and create metadata resources one must be an editor/publisher. Review [How to Become a Provider to the Catalogue](dps_bcdc_w.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE) for more information.

See the [common calls](/dps_bcdc_api_w_common_calls.html) page to find how to get your API key, organization and other information you may require.



### How to create a resource with the API

* Listed are all mandatory fields but there are other fields that can be populated and encourage that they are.

```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_create(
        package_id='YOUR-PACKAGE-ID-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        name='my-resource-name-updated',
	bcdc_type='document',
	resource_update_cycle='monthly',
	format='csv',
	resource_storage_location='catalogue data store',
	resource_type='data',
	resource_access_method='direct access')


print(resp)
```
### How to update a resource with the API using resource_update

* All mandatory fields must be included to use this function.
* Recommend reviewing the json schema for a listing of all available fields and if mandatory or not.
* The following is an example of loading a resource to the catalogue itself and fields defined for the Dataset/Tabular (bcdc_type="document"). Geographic Datasets require more fields.


```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'
ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_update(
        id='RESOURCE-ID-TO-UPDATE-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        name='my-resource-name-updated',
	bcdc_type='document',
	resource_update_cycle='monthly',
	format='csv',
	resource_storage_location='catalogue data store',
	resource_type='data',
	resource_access_method='direct access')


print(resp)
```

### How to update a resource with the API using resource_patch

* Is used to update just specific fields or the resource itself if .

```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'
ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_patch(
        id='RESOURCE-ID-TO-UPDATE-HERE',
        name='my-resource-name-updated',
	description='my-resource-descrition-update')


print(resp)
```

[RETURN TO TOP][1]

[1]: #bc-data-catalogue-resource-api-management
