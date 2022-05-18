---
layout: default
title: Roles & Responsibilities
nav_order: 48
parent: Publication Workflow
grand_parent: BC Geographic Warehouse
has_toc: false
nav_exclude: true
---

<h1>Roles and Responsibilties</h1>

Publishing new or modifing existing BC Geographic Warehouse objects requires coordination between multiple partners including DataBC staff, the client, and the contractor involved (if applicable). 

This page describes the roles and responsibilities of DataBC and the client when publishing data to the BC Geographic Warehouse.

<table>
	<tr>
		<td><b>Audience</b></td>
	</tr>
	<tr>
		<td><i>Data Publishers</i></td>
		<td><i>Business Analysts</i></td>
		<td><i>Business Portfolio Managers</i></td>
		<td><i>Application Administrators</i></td>
	</tr>
</table>

------------------------------

<details> 
  <summary> <h2><b>Pre-Publication</b></h2> </summary>

<h3>DataBC</h3>
<table>
	<tr>
		<td>1.</td>
		<td>Provide documentation on the client workflow for publishing, maintaining, and retiring data sets (known as the data lifecycle) in the BC Geographic Warehouse</td>
	</tr>
	<tr>
		<td></td>
		<td><i>Additional consulting services may be requested for preparing the source data, prior to a data publication request being initiated</i></td>
	</tr>
</table>
  
<h3>Client</h3>
<table>
	<tr>
		<td>1.</td>
		<td>Review all required documentation as described in the <a href="https://bcgov.github.io/data-publication/pages/dps_bcgw_w.html">Data Publication Workflow</a></td>
	</tr>
	<tr>
		<td>2.</td>
		<td>Ensure that the data to be published follows standards and guidelines as described in: <br> - BC Geographic Warehouse - <a href="https://bcgov.github.io/data-publication/pages/dsg_bcgw_data_standards.html">Data Standards and Guidelines</a> <br> - <a href="https://bcgov.github.io/data-publication/pages/dsg.html">Common Standards and Guidelines</a></td>
	</tr>
	<tr>
		<td>3.</td>
		<td>Ensure that the data to be published is in a production state and ready for publishing in the BC Geographic Warehouse prior to requesting publication. <br><i>Considerations may be made where new applications being built rely on testing the data throughout deployments in delivery and test database environments.</i></td>
	</tr>
	<tr>
		<td>4.</td>
		<td>Complete the <a href="https://bcgov.github.io/data-publication/pages/images/Dataset_Model_Current_TEMPLATE.xlsx">Dataset Model</a> in preparation for submitting the request to publish (this is a requirement to request publication)</td>
	</tr>
	<tr>
		<td>5.</td>
		<td>Submit the request to publish in the <a href="https://dpdd.atlassian.net/servicedesk/customer/portal/1">Data Sytems and Services Request System</a> as a <a href="https://dpdd.atlassian.net/servicedesk/customer/portal/1/group/5/create/28">Share New Data</a> request</td>
	</tr>
</table>
</details>

------------------------------

<details>
  <summary> <h2><b>During Publication</b></h2> </summary>

<h3>DataBC</h3>

<table>
	<tr>
		<td>1.</td>
		<td>Be available to the client for additional questions or issues that arise throughout the publication process</td>
	</tr>
	<tr>
		<td>2.</td>
		<td>Schedule regular meetings with the client, at mutually convenient times, for each stage in the data publication process</td>
	</tr>
	<tr>
		<td>3.</td>
		<td>Communicate timelines for each stage in the data publication process</td>
	</tr>
	<tr>
		<td>4.</td>
		<td>Provide updated timelines when affected by change of scope, technology or shifts in priorities</td>
	</tr>
	<tr>
		<td>5.</td>
		<td>Review and provide feedback on the Dataset Model as submitted by the client</td>
	</tr>
	<tr>
		<td>6.</td>
		<td>Review and publish a layer file in iMapBC and/or the Layer Library, if applicable</td>
	</tr>
	<tr>
		<td>7.</td>
		<td>Review and publish BC Data Catalogue metadata record(s)</td>
	</tr>
	<tr>
		<td>8.</td>
		<td>Configure Data Distribution, if the data will be available for download</td>
	</tr>
	<tr>
		<td>9.</td>
		<td>When there is a DataBC hosted map application involved (not including iMapBC), plan and coordinate required application changes through the Delivery, Test, Production environments</td>
	</tr>
	<tr>
		<td>10.</td>
		<td>Deploy data sets to Delivery, Test and Production BCGW environments</td>
	</tr>
	<tr>
		<td>11.</td>
		<td>Configure and schedule data replications from source to target (BCGW)</td>
	</tr>
	<tr>
		<td>12.</td>
		<td>Communicate any issues or concerns with the client as they arise</td>
	</tr>
</table>

<h3>Client</h3>

<table>
	<tr>
		<td>1.</td>
		<td>Communicate with the DataBC team via the Share New Data request created in the Data Sytems and Services Request System</td>
	</tr>
	<tr>
		<td>2.</td>
		<td>Attend and contribute to all regularly scheduled meetings throughout the data publication process</td>
	</tr>
	<tr>
		<td>3.</td>
		<td>Communicate with the DataBC team when there are changes to scope or shifts in priorities</td>
	</tr>
	<tr>
		<td>4.</td>
		<td>Address issues or concerns as they arise. If issue resolution impacts timelines, this will be communicated with DataBC</td>
	</tr>
	<tr>
		<td>5.</td>
		<td>If the dataset is to be configured for use in iMapBC, the Layer Library, ArcGIS Online, or as a WMS, the client will supply a layer file. <br> - <i>DataBC is available to provide this service when the business area does not have GIS support.</i></td>
	</tr>
	<tr>
		<td>6.</td>
		<td>repare the BC Data Catalogue record and set the State to Pending Publish prior to data being migrated to production</td>
	</tr>
	<tr>
		<td>7.</td>
		<td>Complete and submit the Open Data Assessment and checklist to DataBC where the data will be licensed under the Open Government Licence – British Columbia</td>
	</tr>
</table>
</details>
  
------------------------------

<details>
  <summary> <h2><b>Post-Publication</b></h2> </summary>

<h3>DataBC</h3>

<table>
	<tr>
		<td>1.</td>
		<td>Provide an opportunity for feedback at the close of the project</td>
	</tr>
	<tr>
		<td>2.</td>
		<td>Review client feedback and apply learnings to related aspects of the data publication process</td>
	</tr>
	<tr>
		<td>3.</td>
		<td>Continuously monitor scheduled replications and address any issues as they arise</td>
	</tr>
	<tr>
		<td>4.</td>
		<td>Notify client of any issues with the data, access, layer presentation, distribution, or configured applications throughout the lifecycle of the data</td>
	</tr>
</table>

<h3>Client</h3>

<table>
	<tr>
		<td>1.</td>
		<td>rovide the DataBC team with feedback at the close of the project</td>
	</tr>
	<tr>
		<td>2.</td>
		<td>Ensure source data model remains unchanged. Changes to the data model post-project can occur, but will be initiated through a separate request</td>
	</tr>
	<tr>
		<td>3.</td>
		<td>Maintain BC Data Catalogue record with current information throughout the lifecycle of the data</td>
	</tr>
	<tr>
		<td>4.</td>
		<td>Notify DataBC when the dataset is at the end of its lifecycle and should be retired</td>
	</tr>
	<tr>
		<td>5.</td>
		<td>Notify DataBC of any issues with the data, access, layer presentation, distribution, or configured applications throughout the lifecycle of the data</td>
	</tr>
	<tr>
		<td>6.</td>
		<td>Maintain and resolve any issues that arise with the source data for replication to the BCGW throughout the lifecycle of the data</td>
	</tr>
</table>
</details>
  
------------------------------
