---
layout: default
nav_order: 89
title: WMS/WFS - Tips & Tricks 
parent: Web-based Mapping
has_toc: false
---

# WFS AND WMS TIPS AND TRICKS

WFS and WMS were developed by the Open Geospatial Consortium (OGC), an international not for profit organization.

[Web Map Services (WMS)](https://en.wikipedia.org/wiki/Web_Map_Service)
is a standardized HTTP protocol used to styling & render data into a map (image) and perform identify operations.

[Web Feature Services (WFS)](https://en.wikipedia.org/wiki/Web_Feature_Service)
is a standardized HTTP protocol used to access/query/analyze feature attributes. 

Thanks to [Michelle Douville](https://github.com/webgismd/) for all her hard work on these services and documentation.

|**AUDIENCE**|  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|
| *AGO Content Creators* | *Data Publishers* | *Data Custodians* | *Data Managers* | *Data Stewards* | *Metadata Editors* |

-----------------------
## Table of Contents
+ [**Resources**](#resources)
+ [**Request Types**](#request-types)
+ [**Output Formats**](#output-formats)
+ [**Example Requests**](#example-requests)
+ [**Pagination**](#pagination)
+ [**Sample Applications**](#sample-applications)

-----------------------
## RESOURCES

**[BC Data Catalogue Search Results for WMS](http://catalogue.data.gov.bc.ca/dataset?download_audience=Public&res_format=wms)**

**Links**
+ [http://www.opengeospatial.org/standards/wms](http://www.opengeospatial.org/standards/wms)
+ [http://www.opengeospatial.org/standards/wfs](http://www.opengeospatial.org/standards/wfs)
+ [http://docs.geoserver.org/stable/en/user/services/wms/reference.html](http://docs.geoserver.org/stable/en/user/services/wms/reference.html)
+ [http://docs.geoserver.org/stable/en/user/services/wfs/reference.html](http://docs.geoserver.org/stable/en/user/services/wfs/reference.html)

**Description of BC Government’s Web Mapping Frameworks and Services**
[https://bcgov.github.io/bcwebmaps-options/](https://bcgov.github.io/bcwebmaps-options/)  (available from here too [https://developer.gov.bc.ca/?q=spatial](https://developer.gov.bc.ca/?q=spatial) )
+ Geoserver WFS Outputformat types are JSON, JSONP, GML(s), CSV,  and Shapefile  
	+ [https://docs.geoserver.org/latest/en/user/services/wfs/outputformats.html](https://docs.geoserver.org/latest/en/user/services/wfs/outputformats.html)
+ Geoserver CQL Filter 
	+ [https://docs.geoserver.org/stable/en/user/tutorials/cql/cql_tutorial.html#cql-tutorial](https://docs.geoserver.org/stable/en/user/tutorials/cql/cql_tutorial.html#cql-tutorial)

+ WMS/WFS can be accessed through existing application programming interfaces (API) such as Leaflet, ArcGIS API for Javascript, and Openlayers. 
+ WMS/WFS can be accessed can be accessed via client applications suchs as ArcGIS [Desktop/Pro](https://desktop.arcgis.com/en/arcmap/latest/map/web-maps-and-services/using-wms-service-layers.htm) and [QGIS](http://www.qgistutorials.com/en/docs/working_with_wms.html).

+ Don’t forget curl and wget!

-----------------------

## REQUEST TYPES

### Types of  WMS Requests:
```
<GetCapabilities>
<GetMap> 
<GetFeatureInfo> 
<GetLegendGraphic>
```

### Types of  WFS Requests:
```
<GetCapabilities>
<DescribeFeatureType>
<GetFeature> 
```

WMS/WFS requests can be made for all layers or as a separate service each layer/feature class:
+ [http://openmaps.gov.bc.ca/geo/pub/wms?request=GetCapabilities](http://openmaps.gov.bc.ca/geo/pub/wms?request=GetCapabilities)
+ [http://openmaps.gov.bc.ca/geo/pub/wfs?request=GetCapabilities](http://openmaps.gov.bc.ca/geo/pub/wfs?request=GetCapabilities)
+ [http://openmaps.gov.bc.ca/geo/pub/WHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY/wms?request=GetCapabilities](http://openmaps.gov.bc.ca/geo/pub/WHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY/wms?request=GetCapabilities)
+ [http://openmaps.gov.bc.ca/geo/pub/WHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY/wfs?request=GetCapabilities](http://openmaps.gov.bc.ca/geo/pub/WHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY/wfs?request=GetCapabilities)


-----------------------
## OUTPUT FORMATS

### WMS Output Options
```
<Format>image/png</Format>
<Format>application/atom+xml</Format>
<Format>application/json;type=geojson</Format>
<Format>application/json;type=topojson</Format>
<Format>application/json;type=utfgrid</Format>
<Format>application/pdf</Format>
<Format>application/rss+xml</Format>
<Format>application/vnd.google-earth.kml+xml</Format>
<Format>application/vnd.google-earth.kmz</Format>
<Format>application/x-protobuf;type=mapbox-vector</Format>
<Format>image/geotiff</Format>
<Format>image/geotiff8</Format>
<Format>image/gif</Format>
<Format>image/jpeg</Format>
<Format>image/png; mode=8bit</Format>
<Format>image/svg+xml</Format>
<Format>image/tiff</Format>
<Format>image/tiff8</Format>
<Format>image/vnd.jpeg-png</Format>
<Format>text/html; subtype=openlayers</Format>
<Format>text/html; subtype=openlayers2</Format>
<Format>text/html; subtype=openlayers3</Format>
```

### WFS Output Options
```
<ows:Value>application/gml+xml; version=3.2</ows:Value>
<ows:Value>GML2</ows:Value>
<ows:Value>HTML</ows:Value>
<ows:Value>KML</ows:Value>
<ows:Value>SHAPE-ZIP</ows:Value>
<ows:Value>application/json</ows:Value>
<ows:Value>application/vnd.google-earth.kml xml</ows:Value>
<ows:Value>application/vnd.google-earth.kml+xml</ows:Value>
<ows:Value>csv</ows:Value>
<ows:Value>gml3</ows:Value>
<ows:Value>gml32</ows:Value>
<ows:Value>json</ows:Value>
<ows:Value>text/javascript</ows:Value>
<ows:Value>text/xml; subtype=gml/2.1.2</ows:Value>
<ows:Value>text/xml; subtype=gml/3.1.1</ows:Value>
<ows:Value>text/xml; subtype=gml/3.2</ows:Value>
```

-----------------------
## EXAMPLE REQUESTS

### [WMS `GetMap` Example](http://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&FORMAT=application/openlayers&TRANSPARENT=true&STYLES=1748&LAYERS=pub%3AWHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY&SRS=EPSG%3A3005&WIDTH=512&HEIGHT=440&BBOX=1069159.051186301%2C1050414.7675306%2C1074045.5446851396%2C1054614.0978811644):

```
http://openmaps.gov.bc.ca/geo/pub/ows?
SERVICE=WMS&
VERSION=1.1.1&
REQUEST=GetMap&
FORMAT=application/openlayers&
TRANSPARENT=true&
STYLES=1748&
LAYERS=pub:WHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY&
SRS=EPSG:3005&
WIDTH=512&HEIGHT=440&
BBOX=1069159.051186301%2C1050414.7675306%2C1074045.5446851396%2C1054614.0978811644
```

### [WFS `GetFeature` Example](http://openmaps.gov.bc.ca/geo/pub/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&count=1&outputFormat=json):

```
http://openmaps.gov.bc.ca/geo/pub/ows?
service=WFS&
version=2.0.0&
request=GetFeature&
typeName=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&
count=1&
outputFormat=json
```

Response in JSON:
```
{"type": "FeatureCollection","features": [{"type": "Feature","id": "WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW.fid--7b8e502a_1677cdee8cf_498b","geometry": {"type": "Polygon","coordinates": [[[1121268.689,481286.634],[1121313.079,481348.863],[1121288.326,481374.623],[1121224.966,481286.119],[1121268.689,481286.634]]]},"geometry_name": "SHAPE","properties": {"PARCEL_FABRIC_POLY_ID": 27,"PARCEL_NAME": "006620256","PLAN_NUMBER": "VIP1993","PIN": null,"PID": "006620256","PID_NUMBER": 6620256,"PARCEL_STATUS": "Active","PARCEL_CLASS": "Subdivision","OWNER_TYPE": "Private","PARCEL_START_DATE": null,"MUNICIPALITY": "Parksville, City of","REGIONAL_DISTRICT": "Regional District of Nanaimo","WHEN_UPDATED": "2016-04-21Z","FEATURE_AREA_SQM": 3260.4354,"FEATURE_LENGTH_M": 264.7362,"OBJECTID": 77398905,"SE_ANNO_CAD_DATA": null}}],"totalFeatures": 1573818,"numberMatched": 1573818,"numberReturned": 1,"timeStamp": "2018-12-05T06:06:21.364Z","crs": {"type": "name","properties": {"name": "urn:ogc:def:crs:EPSG::3005"}}}
```
Tip: [Prettify JSON](https://marketplace.visualstudio.com/items?itemName=mohsen1.prettify-json) to make it easier to read.
## More complex examples

### WMS `GetMap`

[**Dams in the Cariboo District (`CQL filter`), output as GeoJSON**](http://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&FORMAT=application/json;type=geojson&LAYERS=pub:WHSE_WATER_MANAGEMENT.WRIS_DAMS_PUBLIC_SVW&HEIGHT=1024&WIDTH=1024&STYLES=3959&SRS=EPSG:4326&CQL_FILTER=%22DISTRICT_PRECINCT%22%20LIKE%20%27Cariboo%25%27&BBOX=-139.46653152270716,39.3982201780243,-110.0651303636062,68.79962133712526):

```
http://openmaps.gov.bc.ca/geo/pub/ows?
SERVICE=WMS&
VERSION=1.1.1&
REQUEST=GetMap&
FORMAT=application/json;type=geojson&
LAYERS=pub:WHSE_WATER_MANAGEMENT.WRIS_DAMS_PUBLIC_SVW&
HEIGHT=1024&WIDTH=1024&
STYLES=3959&
SRS=EPSG:4326&
CQL_FILTER=%22DISTRICT_PRECINCT%22%20LIKE%20%27Cariboo%25%27&
BBOX=-139.46653152270716,39.3982201780243,-110.0651303636062,68.79962133712526
```
N.B. even for a JSON request, `height` and `width` must be specified. Weird, huh?

### WMS `GetFeatureInfo`

`i` (or `x`) and `j` (or `y`) refer to the query point on the map

[**Land Parcel Information at a specified location, output as an HTML table**](https://openmaps.gov.bc.ca/geo/ows?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&BBOX=48.40785014436799116,-123.36256681214997855,48.41958084268204487,-123.34925222208043749&CRS=EPSG:4326&WIDTH=538&HEIGHT=474&LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&QUERY_LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&INFO_FORMAT=text/html&I=109&J=187&FEATURE_COUNT=10):

```
https://openmaps.gov.bc.ca/geo/ows?
SERVICE=WMS&
VERSION=1.3.0&
REQUEST=GetFeatureInfo&
BBOX=48.40785014436799116,-123.36256681214997855,48.41958084268204487,-123.34925222208043749&
CRS=EPSG:4326&
WIDTH=538&HEIGHT=474&
LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&
QUERY_LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&
INFO_FORMAT=text/html&
I=109&
J=187&
FEATURE_COUNT=10
```

[**Crown Tenures within a bounding box, output as text**](https://openmaps.gov.bc.ca/geo/pub/WHSE_TANTALIS.TA_CROWN_TENURES_SVW/ows?service=WMS&request=GetFeatureInfo&version=1.1.1&layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&styles=2214&format=text/xml&srs=EPSG:4326&width=970&height=485&bbox=-123.35,50.60393449638617,-123,51.593907018763396&query_layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&feature_count=500&x=50&y=50):
```
https://openmaps.gov.bc.ca/geo/pub/WHSE_TANTALIS.TA_CROWN_TENURES_SVW/ows?
service=WMS&
request=GetFeatureInfo&
version=1.1.1&
layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&
styles=2214&
format=text/xml&
srs=EPSG:4326&
width=970&height=485&
bbox=-123.35,50.60393449638617,-123,51.593907018763396&query_layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&
feature_count=500&
x=50&y=50
```

### WFS `GetFeature`
[**WELL_STATUS attribute and geometry of the Water Well with Well Tag # 65501, output as JSON**](http://openmaps.gov.bc.ca/geo/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&outputFormat=application/json&SrsName=EPSG%3A4326&CQL_FILTER=WELL_TAG_NUMBER%3D65501&PROPERTYNAME=WELL_STATUS):

```
http://openmaps.gov.bc.ca/geo/ows?
service=WFS&
version=2.0.0&
request=GetFeature&
typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&
outputFormat=application/json&
SrsName=EPSG:4326&
CQL_FILTER=WELL_TAG_NUMBER=65501&
PROPERTYNAME=WELL_STATUS
```

[**Major Cities that fall within a Vancouver Island bounding box, output as JSON**](https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=json&typeName=WHSE_BASEMAPPING.BC_MAJOR_CITIES_POINTS_500M&SRSNAME=EPSG%3A3005&CQL_FILTER=WITHIN%28GEOMETRY%2C%20POLYGON%20%28%28830772.7%20367537.4%2C%201202463%20367537.4%2C%201202463%20651616.7%2C%20830772.7%20651616.7%2C%20830772.7%20367537.4%29%29%29):

```
https://openmaps.gov.bc.ca/geo/pub/ows?
SERVICE=WFS&
VERSION=2.0.0&
REQUEST=GetFeature&
outputFormat=json&
typeName=WHSE_BASEMAPPING.BC_MAJOR_CITIES_POINTS_500M&
SRSNAME=EPSG:3005&
CQL_FILTER=WITHIN%28GEOMETRY%2C%20POLYGON%20%28%28830772.7%20367537.4%2C%201202463%20367537.4%2C%201202463%20651616.7%2C%20830772.7%20651616.7%2C%20830772.7%20367537.4%29%29%29
```

The `CQL_FILTER` being applied is `WITHIN(GEOMETRY,POLYGON((830772.7 367537.4, 1202463 367537.4, 1202463 651616.7, 830772.7 651616.7, 830772.7 367537.4)))`. In this case, URL encoding first is necessary to send the request.

[**Wells within 100 meters of a point**](https://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=application/json&typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&CQL_FILTER=DWITHIN(GEOMETRY,POINT(1161815%20452123),100,meters)):

```
https://openmaps.gov.bc.ca/geo/pub/ows?
SERVICE=WFS&
VERSION=2.0.0&
REQUEST=GetFeature&
outputFormat=application/json&
typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&
CQL_FILTER=DWITHIN(GEOMETRY,POINT(1161815%20452123),100,meters)
```


[**Community Health Service Area that intersects with a given point**](https://openmaps.gov.bc.ca/geo/pub/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=pub:WHSE_ADMIN_BOUNDARIES.BCHA_CMNTY_HEALTH_SERV_AREA_SP&srsname=EPSG:4326&cql_filter=INTERSECTS(SHAPE,POINT(1224584.57951%20469989.94624))&propertyName=CMNTY_HLTH_SERV_AREA_NAME,LOCAL_HLTH_AREA_NAME,HLTH_SERVICE_DLVR_AREA_NAME,HLTH_AUTHORITY_NAME&outputFormat=application/json):

```
https://openmaps.gov.bc.ca/geo/pub/ows?
service=WFS&
version=1.0.0&
request=GetFeature&
typeName=pub:WHSE_ADMIN_BOUNDARIES.BCHA_CMNTY_HEALTH_SERV_AREA_SP&
srsname=EPSG:4326&
cql_filter=INTERSECTS(SHAPE,POINT(1224584.57951%20469989.94624))&propertyName=CMNTY_HLTH_SERV_AREA_NAME,LOCAL_HLTH_AREA_NAME,HLTH_SERVICE_DLVR_AREA_NAME,HLTH_AUTHORITY_NAME&
outputFormat=application/json
```

-----------------------

## PAGINATION 

### Max number of feature limit and work-around for larger datasets

Most openmaps.gov.bc.ca services have a maximum of 10000. [A WFS `GetCapabilities` request with version 2.0.0](http://openmaps.gov.bc.ca/geo/pub/wfs?request=GetCapabilities&version=2.0.0) will tell you what the maximum features limit is.
```
<ows:Constraint name="CountDefault">
<ows:NoValues/>
<ows:DefaultValue>10000</ows:DefaultValue>
</ows:Constraint>
</ows:Operation>
```

Drawing on the [Geoserver docs](https://docs.geoserver.org/2.22.x/en/user/services/wfs/webadmin.html):
> *Maximum number of features* — Maximum number of features that a WFS GetFeature operation should generate, 
regardless of the actual number of query hits. A WFS request can potentially contain a large dataset that is impractical to download to 
a client, and/or too large for a client’s renderer. Maximum feature limits are also available for feature types."

How to find out if your request will exceed the limit? Add `resulttype=hits` to your WFS request (for environmental monitoring stations in this example):

[https://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&**resulttype=hits**](https://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&resulttype=hits)

The result will include: `numberMatched="13641"`

Alternatively, if you make the request without `resulttype=hits` and just so happen to get 10000 features returned, that's a good hint you are hitting the limit.

If your request might exceed the feature limit, the solution is **pagination** - paging through the results in chunks in order to get all the features you are after.
 
### Paging example
 
To page successfully, we must add three parameters to our request: 
1. `count` (in WFS v2) or `maxFeatures` (in WFS v1) limiting features to return below the maximum
2. `sortBy` set to the primary key for the table (hopefully there is an ObjectID or similar attribute)
3. `startIndex` set to 0, but incrementing by the `count` value for additional requests
   
Returning to our monitoring station request with 13631 features, we can use a count of 5000, sorting by ObjectID, starting at index 0 ([first request](https://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&count=5000&sortBy=OBJECTID&startIndex=0)):
```
https://openmaps.gov.bc.ca/geo/pub/ows?
SERVICE=WFS&VERSION=2.0.0&
REQUEST=GetFeature&
outputFormat=csv&
typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&
propertyName=OBJECTID&
count=5000&
sortBy=OBJECTID&
startIndex=0
```

To get the next page, we [increase the `startIndex` to 5000](https://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&count=5000&sortBy=OBJECTID&startIndex=5000). And then finally [increment to 10000](https://openmaps.gov.bc.ca/geo/pub/ows?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&count=5000&sortBy=OBJECTID&startIndex=10000) for the last page.

-----------------------

## SAMPLE APPLICATIONS

### OpenLayers Preview

[**Example of an Openlayers output format for preview and exploring**](http://openmaps.gov.bc.ca/geo/pub/wms?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&FORMAT=application/openlayers&TRANSPARENT=true&STYLES=7738&LAYERS=pub%3AWHSE_MINERAL_TENURE.HSP_MJR_MINES_PERMTTD_AREAS_SP&exceptions=application%2Fvnd.ogc.se_inimage&SRS=EPSG%3A3005&WIDTH=512&HEIGHT=441&BBOX=1048725.4914577596%2C996424.7407280033%2C1068271.4654531137%2C1013222.0621302609):

```
http://openmaps.gov.bc.ca/geo/pub/ows?
SERVICE=WMS&
VERSION=1.1.1&
REQUEST=GetMap&
FORMAT=application/openlayers&
TRANSPARENT=true&STYLES=7738&
LAYERS=pub%3AWHSE_MINERAL_TENURE.HSP_MJR_MINES_PERMTTD_AREAS_SP&
SRS=EPSG:3005&
WIDTH=512&HEIGHT=441&
BBOX=1048725.4914577596%2C996424.7407280033%2C1068271.4654531137%2C1013222.0621302609
```

### Leaflet Example App

A simple leaflet app that has some of the WMS parameters as URL parameters -  
[http://delivery.openmaps.gov.bc.ca/kml/m/lfg103/lfwmsi2.html?l=WHSE_MINERAL_TENURE.HSP_MJR_MINES_PERMTTD_AREAS_SP&s=7738&a=MINE_GUID&f=MINE_GUID%3D%27d214e340-4575-4225-8dde-4f9504d5748f%27](http://delivery.openmaps.gov.bc.ca/kml/m/lfg103/lfwmsi2.html?l=WHSE_MINERAL_TENURE.HSP_MJR_MINES_PERMTTD_AREAS_SP&s=7738&a=MINE_GUID&f=MINE_GUID%3D%27d214e340-4575-4225-8dde-4f9504d5748f%27)
	
Add WMS Layers
```javascript
var map = new L.Map('map', {
center: [52, -123.3],
zoom: 5
//layers: [mqLayer]
});
	 L.esri.tiledMapLayer({
url: 'http://maps.gov.bc.ca/arcserver/rest/services/province/roads_wm/MapServer',
maxZoom: 15
}).addTo(map);
	 // layer name parameter
var l = getURLParameters("l");
	 // style name parameter
var s = getURLParameters("s");
	 // filter attribute parameter
var a = getURLParameters("a");
	 // filter statement parameter
var f = getURLParameters("f");
var owsrootUrl = 'http://openmaps.gov.bc.ca/geo/ows';
var fclayer = L.tileLayer.wms(owsrootUrl, {
format: 'image/png',
transparent: true,
	styles: s,
layers: l
}).addTo(map);
```

Add WFS Layers and Zoom to
```javascript
var parameterswfs = L.Util.extend(defaultParameterswfs);
 var URL = owsrootUrl + L.Util.getParamString(parameterswfs);
 var WFSLayer = null;
 var ajax = $.ajax({
  url : URL,
  dataType : 'jsonp',
  jsonpCallback : 'getJson',
  success : function (response) {
   
   WFSLayer = L.geoJson(response, {
     style: function (feature) {
         return {
         stroke: true,
         fillColor: '00FFFF',
         fillOpacity: 1
         };
     },
     onEachFeature: function (feature, layer) {
         popupOptions = {maxWidth: 200};
         // does this feature have a property named popupContent?
         if (feature.properties && feature.properties.popupContent) {
          layer.bindPopup(feature.properties.popupContent);
         }
     }
   });
            
   WFSLayer.addTo(map);
   console.log(response);

   var corner1 = L.latLng(response.features[0].properties.bbox[1], response.features[0].properties.bbox[0]);
   var corner2 = L.latLng(response.features[0].properties.bbox[3], response.features[0].properties.bbox[2]);
   bounds = L.latLngBounds(corner1, corner2);
   console.log(bounds)
   console.log(corner1)
   console.log(corner2)
   if (bounds) {
              map.fitBounds(bounds, {maxZoom: 15});

```
-----------------------

[RETURN TO TOP][1]

[1]: #wfs-and-wms-tips-and-tricks
