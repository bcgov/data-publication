```
---
layout: default
title: API Metadata Management
nav_order: 391
grand_parent: BC Data Catalogue
parent: Publication Workflow - Classic
has_toc: false
---
```

# USING THE BC DATA CATALOGUE API FOR METADATA MANAGEMENT

The BC Data Catalogue is built using an open source data portal software called [CKAN](https://github.com/ckan/ckan/blob/master/README.rst). Some users may prefer to use the API to manage thier content in the BC Data Catalogue, while others may prefer to use the applicaiton itself. This page provides guidance on the use of the Catalogue API to manage metadata and data within the BC Data Catalogue.

|**AUDIENCE**|
|:---:|
| *Metadata Editors* |

## Table of Contents
+ [**ARCHITECTURE**](#architecture)
+ [**HOW TO MANAGE METADATA RECORDS AND RESOURCES USING THE CATALOGUE API**](#how-to-manage-metadata-records-and-resources-using-the-catalogue-api)
	+ [How to create a resource with the API](#how-to-create-a-resource-with-the-api)
	+ [How to update a resource with the API](#how-to-update-a-resource-with-the-api)
	+ [How to get the organization ID with the organization name](#how-to-get-the-organization-id-with-the-organization-name)
	+ [How to get package names and package IDs within an organization](#how-to-get-package-names-and-package-ids-within-an-organization)
	+ [How to get the resource names and resource IDs withing a package](#how-to-get-the-resource-names-and-resource-ids-withing-a-package)

-----------------------

## ARCHITECTURE

The base product on which BCDC is dependent is https://github.com/ckan/ckan - it is an open source application that uses extensions in a plug-in architecture to extend and customize it.

Our main customization is done through a theme extension that we manage https://github.com/bcgov/ckanext-bcgov.

The application is supported by technical infrastructure and that has a number of integrations with other systems through a combination of database and API level connections.

## HOW TO MANAGE METADATA RECORDS AND RESOURCES USING THE CATALOGUE API

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
1. Click on your name in the upper right
1. Bottom left corner is your personal API Key

The following python syntax is used as an example from a specific organization

### How to create a resource with the API
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_create(
        package_id='YOUR-PACKAGE-ID-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        resource_storage_location="Catalogue Data Store",
        name="my-resource-name",
        edc_resource_type="Data",
        format="csv",
        resource_update_cycle="monthly",
        resource_storage_access_method="Direct Access")


print(resp)
```
### How to update a resource with the API
```
import ckanapi

ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.resource_update(
        id='RESOURCE-ID-TO-UPDATE-HERE',
        upload=open('/Users/Documents/test_resource_csv_upload.csv'),
        resource_storage_location="Catalogue Data Store",
        name="my-resource-name-updated",
        edc_resource_type="Data",
        format="csv",
        resource_update_cycle="monthly",
        resource_storage_access_method="Direct Access")


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

[1]: #using-the-bc-data-catalogue-api-for-metadata-management
