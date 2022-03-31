---
layout: default
title: Getting started
nav_order: 31
parent: BC Data Catalogue
has_children: false
has_toc: true
---

## Table of Contents

1. [**Where do I start**](#where-do-i-start)
1. [**How to cecome a Data Provider to the Catalogue**](#how-to-become-a-provider-to-the-catalogue)
    - [How to become a Provider for another Organization](#how-to-become-a-provider-for-another-organization)
1. [**How to publish Records - Moved**](#how-to-publish-records)
1. [**How to create a Catalogue Group**](#how-to-create-catalogue-groups)
1. [**How to update...**](#how-to-update)
	+ [Accounts](#accounts)
	+ [Organization and or Sub-Organization details](#organization-details)
	+ [Contact details](#contact-details)
1. [**How can I...**](#how-can-i-)
	+ [Create and manage Records and Resources in bulk](#create-and-manage-records-and-resources-in-bulk)
	+ [Do bulk updates](#do-bulk-updates)
	+ [Reorder Resources](#reorder-resources)
1. [**Other Frequently Asked Questions**](#other-frequently-asked-questions)

------------------------------

|| | **Audeience**| | |
|:---|:---|:---|:---|:---|
|[*Data Publisher*](./glossary.md#data_publisher)|[*Custodian*](./glossary.md#custodian)|[*Data Manager*](./glossary.md#data_manager)|[*Data Steward*](./glossary.md#data_steward)|[*Catalogue Editor*](./glossary.md#metadata_editor)|

------------------------------
## Where do I start

### [BCDC Readiness workflow](./images/wf_MetadataReadiness.svg)
Wondering if you are ready to create metadata? This workflow guides you through the pre-work so you will be ready to create a metadata record.
[![BCDC Metadata Readiness Workflow](./images/wf_MetadataReadiness.png)](./images/wf_MetadataReadiness.svg)

[RETURN TO TOP][1]

------------------------------


## How to become a provider to the Catalogue

To become a Catalogue editor/publisher for a Sub-Organization (a Branch or Division), one needs the sub-org to exist or be created and an grants applied to your account.

To start please log into the [Catalogue](https://catalogue.data.gov.bc.ca/) or have others who you will request access on behalf of.
+ This will populate the catalogue with all your details from the GAL.

Then to request a grant to your account please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3).
+ This request service also allows for other account actions.

Requests can be made for yourself or on behalf of others.

**In this request we ask for the following information:**

1. Subject: "BCDC Account" + additional details - will aid for quick triaging
2. Full name and email
3. IDIR
    + This can be a user IDIR or a Service IDIR
    + A Service IDIR may be ideal for the maintenance workflow to script against the catalogue API.
4. Name of the Ministry or if a Broader Public Sector
5. Name of your Branch/Division - this is usually the level associated with an ED or Director.
6. Approval from the [Data Custodian](./dsg_bcdc_roles_responsibilities.md#the-data-custodian) (Director or Executive Director).

A Catalogue administrator will then action your request and contact you with all relevant information to get you started as an Editor in the BC Data Catalogue.

[RETURN TO TOP][1]

### How to become a Provider for another Organization

It is common for organizations to have staff who work in other Sub-Organizations or branches who steward their data. There may be many reasons for this.

* Therefore [Stewards](./dsg_bcdc_roles_responsibilities.md#the-data-steward) can become providers to the catalogue on behalf of another sub-organization's [Data Custodian](./dsg_bcdc_roles_responsibilities.md#the-data-custodian).

* To be granted access, is the same as the information outlined on [how to get access above](#how-to-become-a-provider-to-the-catalogue) but is useful to include that the editor will be steward.


[RETURN TO TOP][1]

------------------------------
## How to publish Records

See the BC Data Catalogue [Publication Workflow](./dps_bcdc_w.md)

[RETURN TO TOP][1]

------------------------------

## How transfer Custodianship of a dataset 

+ Both branches or executives must agree that the resoposibility and authority for a dataset management is being transfered
+ Providing writing confiration of this is required to transfer records

[RETURN TO TOP][1]


------------------------------

## How to create Catalogue Groups

Metadata Groups provide a listing of like datasets for a specific purpose and can contain records from across multiple organizations.
+ These are not intended to replace a full listing of records for a sub-organization.
+ Groups by default are public but a request them to be visible to IDIR only can be made.

To create a group, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

**Requirements:**
+ **Group name**:
+ **Group description**:
+ **URL**: _for more information_
+ **Image**: _either a file or URL_
+ **Members**: _list of IDIRs who will maintain the Group_
+ **Group visibility**: Public or IDIR

[RETURN TO TOP][1]

------------------------------

## How to update...

### Accounts

To request updates to accounts for your organization, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3).

[RETURN TO TOP][1]

### Organization details

Not all Ministry or Broader Public Sector organizations are listed in the catalogue. Only those with records are listed.

To add or update a Organization/Ministry or Sub-organization/Branch/Division/Program names or details, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

+ **Subject line**: BCDC Organization/Sub-Organization Addition/Update
+ **Body**:
   + Name of Ministry of Organization:
      + If a sub-organization has moved to a different ministry, include the new ministry or organization name.
   + Name of Sub-Organization or Branch:
      + If a name change include the old and new name  
   + Additional Organization details
       + Description:
       + External URL:
   + List of data providers (Editors)
       + When an update is requested for a sub-organization, we ask that the members and contacts list be reviewed.
       + DataBC can provide you with a current list to review.

On each record it will state the Sub-organization name that the record has been **Published By**.

For editors of multiple sub-organizations, they will be able to select a record to be **Published By** any of these.

[RETURN TO TOP][1]

### Contact details

All records require one visible contact to the public, and at times this is their generic inbox. However we do recommend that additional contacts be listed which may require logging into the Catalogue to see.

It is the responsibility of the org listed as Published by to maintain their records but at times the contact listed is unreachable, for example they have left government or retired. Please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and the link of the metadata record for which the contact is not available


[RETURN TO TOP][1]

------------------------------

## How can I ...

### Create and manage Records and Resources in bulk

Creating and managing records and resources in bulk can be done via the API. [See Content Management and Use via the API](dps_bcdc_api_w_how_to_use.md).

[RETURN TO TOP][1]

### Do bulk updates

When there are more than 20 records that require updating, a bulk update can be requested by opening a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

+ Common bulk updates:
	+ Branch/Division name
	+ Contact information
	+ State Change
	+ URL modifications for More Info and Resources

[RETURN TO TOP][1]

### Reorder Resources

This functionality is not available currently; however it is possible with the [API](http://docs.ckan.org/en/ckan-2.7.3/api/#ckan.logic.action.update.package_resource_reorder).

For support, please open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/23) and include in the description:

1. The catalogue record
1. Desired order of resources
   + How resources should be order should follow some guidelines for example
       - User Guides should come first
       - Chronological order for datasets that have a date range with newest first
       - Those that have the highest value to the end users
       - Or if there are a lot of resources, alphabetical may also be

[RETURN TO TOP][1]
------------------------------

## Other frequently asked questions

See the [Catalogue section of the Data Publication FAQ](./faq.md#metadata-records-and-the-bc-data-catalogue)

[RETURN TO TOP][1]

[1]: #table-of-contents
