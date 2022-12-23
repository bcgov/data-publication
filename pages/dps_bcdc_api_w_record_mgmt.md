---
layout: default
title: Record Management
nav_order: 342
grand_parent: BC Data Catalogue
parent: Content Mgmt/Use - API
has_children: false
has_toc: false
---

# **BC Data Catalogue Record API management**

-------------

||**Audience** | |
|:---:|:---:|:---:|
| [*Catalogue Editors*](../glossary.html#metadata_editor) | [*Catalogue Admin*](../glossary.html#metadata_admin) | *Catalogue Developers* |

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


# To change host between prod and test, use the following: production = 'catalogue'; test = 'toyger'
# To see possible values for pick lists the schema is available at:
	* https://github.com/bcgov/ckanext-bcgov-schema/blob/master/ckanext/bcgov_schema/bcdc_dataset.json
 
ckan = ckanapi.RemoteCKAN('https://catalogue.data.gov.bc.ca', apikey='YOUR-APIKEY-HERE')

resp = ckan.action.package_create(
    type="bcdc_dataset",  # This is a fixed value
    title="Title of my Dataset",  # Can be anything
    name="title-of-my-dataset",  # Should be title in all lowercase with dashes
    owner_org="ORG_ID_HERE",  # ID of organization
    notes="Notes on dataset",  # Useful notes on dataset
    license_id="2",  # Licence ID (example is Open Government License - BC)
    # Contacts is bit harder to read needs because its an array of JSON objects in an escaped string
    # Make sure to surround all keys and values with escaped quotes \"
    # name - your name
    # email - your email
    # org - your organization ID, probably same as above
    # role - your role as a contact, possible values in schema (linked above)
    # displayed - true or false, at least one must be true
    contacts="[{\"name\":\"Your Name\",\"email\":\"name@your.domain\",\"org\":\"ORG_ID_HERE\",\"role\":\"pointOfContact\",\"displayed\":true}]",
    security_class="PUBLIC",  # Possible values in schema (linked above)
    view_audience="Public",  # Possible values in schema (linked above)
    download_audience="Public",  # Possible values in schema (linked above)
    metadata_visibility="Public",  # Possible values in schema (linked above)
    tag_string="test",  # Comma separated, needs at least one value
    publish_state="DRAFT",  # Should always be DRAFT
    resource_status="planned"  # Possible values in schema (linked above)
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

[1]: #bc-data-catalogue-record-api-management
