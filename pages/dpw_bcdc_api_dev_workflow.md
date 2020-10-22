---
layout: default
title: API Development Workflow
nav_order: 30
parent: BC Data Catalogue
grand_parent: Data Publication Workflows
has_toc: false
---

# MANAGING METADATA AND DATA USING THE BC DATA CATALOGUE API

This document provides a set of standards, guidelines, and procedures around loading and maintaining data to be served out by the BC Data Catalogue (BCDC), hereafter known as 'the Catalogue', under the DataBC Program.

-----------------------
## Table of Contents
+ [**ARCHITECTURE**](#architecture)
+ [**HOW TO BECOME A PROVIDER TO THE CATALOGUE**](#how-to-become-a-provider-to-the-catalogue)
+ [**HOW TO MANAGE METADATA RECORDS AND RESOURCES USING THE CATALOGUE API**](#how-to-manage-metadata-records-and-resources-using-the-catalogue-api)
	+ [How to create a resource with the API](#how-to-create-a-resource-with-the-api)
	+ [How to update a resource with the API](#how-to-update-a-resource-with-the-api)
	+ [How to get the organization ID with the organization name](#how-to-get-the-organization-id-with-the-organization-name)
	+ [How to get package names and package IDs within an organization](#how-to-get-package-names-and-package-ids-within-an-organization)
	+ [How to get the resource names and resource IDs withing a package](#how-to-get-the-resource-names-and-resource-ids-withing-a-package)

-----------------------

# Audience

This document is meant for people who want to use the API to make metadata and data available through the Catalogue. It does not contain any DataBC Program internal operational information.

For recommendations on how to publish your data, please refer to the [Before you start](pages/before_you_start.md#before-you-start) and the [_Frequently Asked Questions_](pages/faq.md#frequently-asked-questions-faq) pages.

Feel free to contact the [DataBC Data Architecture Services](mailto:databc.da@gov.bc.ca) team.

# Purpose

The contents of this space is to assist data and metadata providers use the Catalogue API.

-----------------------------------------------------------

## ARCHITECTURE
The base product on which BCDC is dependent is https://github.com/ckan/ckan - it is an open source application that uses extensions in a plug-in architecture to extend and customize it.

Our main customization is done through a theme extension that we manage https://github.com/bcgov/ckanext-bcgov.

The application is supported by technical infrastructure and that has a number of integrations with other systems through a combination of database and API level connections.

## HOW TO BECOME A PROVIDER TO THE CATALOGUE
+ To use the Catalogue API to manage and create metadata records one must be an editor/publisher. For more information on that see the [Catalogue Onboarding and Workflow](pages/bcdc_data_oboarding_and_workflow.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE)

## HOW TO MANAGE METADATA RECORDS AND RESOURCES USING THE CATALOGUE API
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

[RETURN TO TOP][1]

[RETURN TO PUBLISHING METADATA AND DATA TO THE BC DATA CATALOGUE][2]

-------------------------------------------------------

[1]: #managing-metadata-and-data-using-the-bc-data-catalogue-api
[2]: ../index.md#data-publication-process
