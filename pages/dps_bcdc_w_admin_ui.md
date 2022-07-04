---
layout: default
title: Administrative Management
nav_order: 333
parent: Content Mgmt/Use - UI
grand_parent: BC Data Catalogue
has_children: false
has_toc: true
---

# **BC Data Catalogue Member and Organization Management**

**UNDER CONSTRUCTION**

||**Audience** | |
|:---:|:---:|:---:|
| [*Catalogue Admin*](../glossary.html#metadata_admin) | *Catalogue System Adminstrators*  | *Catalogue Developers* |

## Table of Contents
+ [**Role Definitions**](#role-definitions)
+ [**Organizations management**](#organization-management)
    + [**Create Orgs or Groups**](#create-organizations-or-groups)
    + [**Rename or update Orgs or Groups**](#rename-or-update-organizations-or-groups)
    + [**Delete Orgs or Groups**](#delete-organizations-or-groups)
+ [**Member management**](#member-management)
    + [**Add a member to an organization or group**](#add-a-member-to-an-organization-or-group)
    + [**Edit a member role in an organization or group**](#edit-a-member-role-in-an-organization-or-group)
    + [**Remove a member to an organization or group**](#remove-a-member-to-an-organization-or-group)
    + [**Delete a member**](#delete-a-member)


## Role Definitions

|Term|Definition|Role Impact|
|:---|:---|:---|
|Parent Org|Ministry or Highest level of Organization|Assigned User Role membership access to all Ministry's Branches/Divisions records (datasets)|
|Suborg|Branch/Division under Ministry or Organization|Assigned User Role membership access to all Suborg records (datasets)| 
|Group|Container of like records/datasets for quick viewing without searching|Assigned User Role membership access to associated group(s)| 


|User Role| Definition|Abilities|
|:---:|:---|:---|
|Parent Org Admin|Parent granting will provide child or suborgs abilities|Ability to manage records and resources, and promote through the publishing and retirement process, at the Parent Org level.
|Parent Org Editor|Parent granting will provide child or suborgs abilities|Ability to manage records and resources, with limited promotion ability through the publishing and retirement process, at the Parent Org level.
|Suborg Admin|Suborg granting will provide only suborg abilities|Ability to manage records and resources, and promote through the publishing and retirement process, at the Suborg level.
|Suborg Editor|Suborg granting will provide only suborg abilities|Ability to manage records and resources, with limited promotion ability through the publishing and retirement process, at the Suborg level.
|Group Admin| Full access role to manage data association, full group management, including membership to Group| Ability to add/remove PUBLISHED and PENDING ARCHIVE Datasets to Group.  If an Editor or Admin of an Organization, include DRAFT and PENDING PUBLISH datasets for those Organization(s). Edit all Group properties (description, image and privacy checkbox) other than the Group Title and Name (URL)  _ENHANCEMENT_: Edit all Group properties (Group Title, Name (URL), Description, Image and Privacy checkbox), requires Keycloak Delegation Management 
|Group Editor| Partial access role to manage dataset association and partial Group administration | Ability to add/remove PUBLISHED and PENDING ARCHIVE Datasets to Group.  If an Editor or Admin of an Organization, include DRAFT and PENDING PUBLISH datasets for those Organization(s).  _ENHANCEMENT_: Edit all Group properties (description, image and privacy checkbox) other than that the Group Title and Name (URL)

[Return to top][1]

## Organization or group management
Log in to perform any actions:

![image](https://user-images.githubusercontent.com/99049515/177217359-5e272d52-e6da-4413-98c2-592b14ffb102.png)


### Add an organization and group
1. Log in
1. Under the hamburger click **Explore by Organization** or **Explore Dataset Groups** 
1. Click **Add Organizaton** or **Add Group** 
1. The follow fields are to be filled out:
    1. **Name**
    1. **Url Name**
    1. **Description**
    1. **External URL**
    1. **Image URL**
    1. **Parent**
        1. To be able to select a parent or ministry level or move between them, an admin must be an admin to all levels. Therefore this is done by system-administrators  

[Return to top][1]

### Rename an organization or group
**Things to note**:
+ The Name, e.g., _DataBC Program_ can be changed at any time, changing the url name, e.g., _/databc-program_ should be done after hours due to a bug.

1. Log in as a administrator
2. Navigate to the organization or group
3. Click **_Edit Organzation_** or **_Edit Group_**
4. Update _Name_
    +  Change special characters like & to 'and'
5. Update _URL_
    + Requirements:
        - Lower case name 
        - Spaces replaced with dashes

[Return to top][1]

### Delete an organization or group
**Things to note**:
+ Deleting a Keycloak Group should only happen when a CKAN Organization or Group needs to be deleted and not renamed.
+ Deletion of an organization or group is done by a system administrator
    + To request this as an enhancement to your holdings, open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/1/create/3).
    + Include the name or link to the orginization or group to delete.
    + If there are datasets associated, indicate what organizaton they belong to.


[Return to top][1]

## Member management

+ Users must log into the Catalogue first to be added as a read only member and then grants applied.
+ If a user hasn't logged into the new catalogue their **Username** with be all lower case. If logged in after will be Title case.

The following is how to grant users to be Admin or Editors of a CKAN Organization or Group.

1. Log in
2. Expand the hamburger menu in the top right corner
3. Select the first option in the drop-down menu: **_Account Settings_**

You will see your personalized account settings page – Click on the **“Admin”** tab on the top left-hand side of the menu bar.

Here you will find all of the Organizations and Groups that you have been granted access to depending on your assigned user role within the BC Data Catalogue.


### Add a member to an organization or group
1. Click on the appropriate Ministry/Organization
2. It will expand to show the Branches that you currently have access to edit and/or add members to
3. You can add members to your organization at a branch level by clicking on the **_Add member_** button:

    ![image](https://user-images.githubusercontent.com/99049515/177221232-7bf8228d-b4f3-4824-9b6d-2723be925339.png)

3. Select team member by typing their first and last name or their IDIR account
4. Assign them their member role - Options: **_admin_ or _editor_** role
5. Click **_Add_** button 
6. If you have made an error: click the **_Cancel_** button to return to your Admin Panel page

[Return to top][1]

### Edit a member role in an organization or group
1. Find the team member on your organization or group panel

2. Toggle over their current role and expand the options:

    ![image](https://user-images.githubusercontent.com/99049515/177222415-0cfc0e4a-0c99-45ae-9ab2-c11aab7a6d9c.png)

3. Assign them their new member role - Options: **_admin_ or _editor_** role 

4. Once you have selected their new role - no further action is needed 

[Return to top][1]

### Remove a member from an organization or group
1. Find the team member on your organization or group panel
2. Click on the **_Delete_** button:

    ![image](https://user-images.githubusercontent.com/99049515/177222283-553f5592-1144-4e78-a21f-b7cff2850286.png)
    
3. A dialogue box will open asking you to **"Confirm Removal"** of the member from that specific member role
4. To remove the team member - Confirm by clicking: **_Delete_**
5. If you have made an error: click the **_Cancel_** button to return to your Admin Panel page

[Return to top][1]

## Deleting a member
1. To request this, open a ticket with the [Data Systems & Services request system](https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/3).

[1]: #bc-dtad-catalogue-mamber-and-organiation-management

