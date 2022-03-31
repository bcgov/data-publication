---
layout: default
title: Record Management
nav_order: 342
grand_parent: BC Data Catalogue
parent: Content Mgmt/Use - API
has_children: false
has_toc: false
---

# BC Data Catalgoue API Record management

-------------

|**AUDIENCE**|
|:---|
|[*Metadata Editors*](https://bcgov.github.io/data-publication/pages/glossary.html#metadata_editor)|
|[*Metadata Admin*](https://bcgov.github.io/data-publication/pages/glossary.html#metadata_admin)|

## Table of Contents
+ [**How to manage records using the Catalogue API**](#how-to-manage-records-using-the-catalogue-api)
	+ [How to create a record with the API](#how-to-create-a-record-with-the-api)
	+ [How to update a record with the API using package_patch](#how-to-update-a-record-with-the-api-using-package_patch)

-----------------------
**Resources**
+ See the full list of value options for drop down fields, see the [BCDC Schema](https://catalogue.data.gov.bc.ca/api/3/action/scheming_dataset_schema_show?type=bcdc_dataset)
+ See all documented changes in the [Change Log](https://github.com/bcgov/ckan-ui/blob/master/pages/beta_schema_changes.md#application-resource-level-changes)
+ 
-----------------------

## How to manage records using the Catalogue API
To use the Catalogue API to manage and create metadata records one must be an editor/publisher. Review [How to Become a Provider to the Catalogue](dps_bcdc_w.md#HOW-TO-BECOME-A-PROVIDER-TO-THE-CATALOGUE) for more information.

See the [common calls](/dps_bcdc_api_w_common_calls.html) page to find how to get your API key and other information you may require.

### How to create a package with the API

* Listed are all mandatory fields but there are other fields that can be populated and encourage that they are.

_under construction_

```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'
 
ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.package_create(
        type="bcdc_dataset",
	title="my-resource-name",
	owner_org="my-sub-org-id-here",
	description="my-package-description",
	license_id="licence id",
	contacts={
            delete: "0",
	    private: "Display",
            role: "select-from-list-see-json-schema",
            email: "valid email"
	    name:"contact name",
            org: "organization id"}
	security_class="select-from-list-see-json-schema",
	view_audience="select-from-list-see-json-schema",
	download_audience="select-from-list-see-json-schema",
	metadata_visibility="select-from-list-see-json-schema",
	tag_string={
		"keyword1","keyword2"}
	publish_state="DRAFT",
	resource_status="select-from-list-see-json-schema"	
	)


print(resp)
```
### How to update a package with the API using package_patch

* Is used to update just specific fields within a package.

```
import ckanapi

# to change host between prod and test, use the following: production = 'catalogue'; test = 'cat'
ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.package_patch(
        package_id='PACKAGE-ID-TO-UPDATE-HERE',
        name="my-packagee-name-updated",
	description="my-package-descrition-updated")


print(resp)
```

-------------------------------------------------------

[RETURN TO TOP][1]

[1]: #bc-data-catalgoue-api-record-management
