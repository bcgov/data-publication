---
layout: default
title: Administrative Management
nav_order: 333
parent: Content Mgmt/Use - UI
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

# **BC Data Catalogue Resources**

||**Audience** | |
|:---:|:---:|:---:|
| [*Catalogue Editors*](../glossary.html#metadata_editor) | [*Catalogue Admin*](../glossary.html#metadata_admin) | *Catalogue Developers* |

## Table of Contents

+ [**Resource types**](#resource-types)
   + [Application](#application)


## Role Definitions

|Term|Definition|Role Impact|
|:---|:---|:---|
|Parent Org|Ministry or Highest level of Organization|Assigned User Role membership access to all Ministry's Branches/Divisions records (datasets)|
|Suborg|Branch/Division under Ministry or Organization|Assigned User Role membership access to all Suborg records (datasets)| 
|Group|Container of like records/datasets for quick viewing without searching|Assigned User Role membership access to associated group(s)| 



|User Role| Definition|Abilities|Implementation Status|
|:---:|:---|:---|:---:|
|Sysadmin| | | |
| | | | 
|Parent Org Admin|Parent granting will provide child or suborgs abilities|Ability to manage records and resources, and promote through the publishing and retirement process, at the Parent Org level.|Implemented|
|Parent Org Editor|Parent granting will provide child or suborgs abilities|Ability to manage records and resources, with limited promotion ability through the publishing and retirement process, at the Parent Org level.|Implemented|
|Parent Org Member|Parent granting will provide child or suborgs abilities|Ability to view (read only) Draft, Pending Publish and Archived datasets.  By nature of logging in, they will be able to see all Published and Pending Archive records at the Parent Org level.|Not Implemented|
| | | |
|Suborg Admin|Suborg granting will provide only suborg abilities|Ability to manage records and resources, and promote through the publishing and retirement process, at the Suborg level.|Implemented|
|Suborg Editor|Suborg granting will provide only suborg abilities|Ability to manage records and resources, with limited promotion ability through the publishing and retirement process, at the Suborg level.|Implemented|
|Suborg Member|Suborg granting will provide only suborg abilities|Ability to view (read only) Draft, Pending Publish and Archived datasets.  By nature of logging in, they will be able to see all Published and Pending Archive records regardless of Suborg.|Not Implemented|
| | | | 
|Group Admin| Full access role to manage data association, full group management, including membership to Group| Ability to add/remove PUBLISHED and PENDING ARCHIVE Datasets to Group.  If an Editor or Admin of an Organization, include DRAFT and PENDING PUBLISH datasets for those Organization(s). Edit all Group properties (description, image and privacy checkbox) other than the Group Title and Name (URL)  _ENHANCEMENT_: Edit all Group properties (Group Title, Name (URL), Description, Image and Privacy checkbox), requires Keycloak Delegation Management  |  Currently requested for MVP, in PO Review - https://github.com/bcgov/ckan-ui/issues/487.  Enhancement for Post-MVP. | 
|Group Editor| Partial access role to manage dataset association and partial Group administration | Ability to add/remove PUBLISHED and PENDING ARCHIVE Datasets to Group.  If an Editor or Admin of an Organization, include DRAFT and PENDING PUBLISH datasets for those Organization(s).  _ENHANCEMENT_: Edit all Group properties (description, image and privacy checkbox) other than that the Group Title and Name (URL)  | Currently requested for MVP, in PO Review - https://github.com/bcgov/ckan-ui/issues/487.  Enhancement for Post-MVP. |
|Group Member| Basic access role to manage dataset association to the group  | Ability to add/remove PUBLISHED and PENDING ARCHIVE Datasets to Group.  If an Editor or Admin of an Organization, include DRAFT and PENDING PUBLISH datasets for those Organization(s). | Currently requested for MVP, in PO Review - https://github.com/bcgov/ckan-ui/issues/487|

[Return to top][1]

[1]: #role-definitions

