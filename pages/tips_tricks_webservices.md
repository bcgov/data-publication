---
layout: default
nav_order: 89
title: Tips & Tricks - WMS/WFS
parent: Web-based Mapping
has_toc: false
---

# WFS AND WMS TIPS AND TRICKS

WFS and WMS were developed by the Open Geospatial Consortium (OGC), an international not for profit organization.

[Web Map Services (WMS)](https://en.wikipedia.org/wiki/Web_Map_Service)
is a standardized HTTP interface used to styling & render data into a map (image) and perform identify operations.

[Web Feature Services (WFS)](https://en.wikipedia.org/wiki/Web_Feature_Service)
is  a standardized HTTP interface used to access/query/analyze feature attributes. 

Thanks to [Michelle Douville](https://github.com/webgismd/) for all her hard work on these services and documentation.

|**AUDIENCE**|  |  |  |  | 
|:---:|:---:|:---:|:---:|:---:|
| *AGO Content Creators* | *Data Publishers* | *Data Custodians* | *Data Managers* | *Data Stewards* | *Metadata Editors* |

-----------------------

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

## WMS/WFS REQUEST TYPES

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
## WMS/WFS OUTPUT FORMATS

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
## EXAMPLES

### [WMS `GetMap` Example](http://openmaps.gov.bc.ca/geo/pub/wms?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&FORMAT=application/openlayers&TRANSPARENT=true&STYLES=1748&LAYERS=pub%3AWHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY&SRS=EPSG%3A3005&WIDTH=512&HEIGHT=440&BBOX=1069159.051186301%2C1050414.7675306%2C1074045.5446851396%2C1054614.0978811644)

```http
http://openmaps.gov.bc.ca/geo/pub/wms?
SERVICE=WMS&
VERSION=1.1.1&
REQUEST=GetMap&
FORMAT=application/openlayers&
TRANSPARENT=true&
STYLES=1748&
LAYERS=pub%3AWHSE_FOREST_VEGETATION.VEG_COMP_LYR_R1_POLY&
SRS=EPSG%3A3005&
WIDTH=512&HEIGHT=440&
BBOX=1069159.051186301%2C1050414.7675306%2C1074045.5446851396%2C1054614.0978811644
```

-----------------------
### WFS GetFeature EXAMPLE

[http://openmaps.gov.bc.ca/geo/pub/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&count=1&outputFormat=json](http://openmaps.gov.bc.ca/geo/pub/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&count=1&outputFormat=json)

Response in JSON: 
```
{"type": "FeatureCollection","features": [{"type": "Feature","id": "WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW.fid--7b8e502a_1677cdee8cf_498b","geometry": {"type": "Polygon","coordinates": [[[1121268.689,481286.634],[1121313.079,481348.863],[1121288.326,481374.623],[1121224.966,481286.119],[1121268.689,481286.634]]]},"geometry_name": "SHAPE","properties": {"PARCEL_FABRIC_POLY_ID": 27,"PARCEL_NAME": "006620256","PLAN_NUMBER": "VIP1993","PIN": null,"PID": "006620256","PID_NUMBER": 6620256,"PARCEL_STATUS": "Active","PARCEL_CLASS": "Subdivision","OWNER_TYPE": "Private","PARCEL_START_DATE": null,"MUNICIPALITY": "Parksville, City of","REGIONAL_DISTRICT": "Regional District of Nanaimo","WHEN_UPDATED": "2016-04-21Z","FEATURE_AREA_SQM": 3260.4354,"FEATURE_LENGTH_M": 264.7362,"OBJECTID": 77398905,"SE_ANNO_CAD_DATA": null}}],"totalFeatures": 1573818,"numberMatched": 1573818,"numberReturned": 1,"timeStamp": "2018-12-05T06:06:21.364Z","crs": {"type": "name","properties": {"name": "urn:ogc:def:crs:EPSG::3005"}}}
```

### MORE COMPLEX

**Give me all the Dams in the Cariboo District, output as KML**:

[https://openmaps.gov.bc.ca/geo/pub/wms?service=wms&request=GetMap&version=1.1.1&format=application/vnd.google-earth.kml+xml&layers=WHSE_WATER_MANAGEMENT.WRIS_DAMS_PUBLIC_SVW&styles=3959&height=2048&width=2048&transparent=false&srs=EPSG:4326&format_options=AUTOFIT:true;KMATTR:true;KMPLACEMARK:true;KMSCORE:100;MODE:download;SUPEROVERLAY:false&CQL_FILTER=%22REGION_NAME%22=%27CARIBOO%27&bbox=-139.46653152270716,39.3982201780243,-110.0651303636062,68.79962133712526](https://openmaps.gov.bc.ca/geo/pub/wms?service=wms&request=GetMap&version=1.1.1&format=application/vnd.google-earth.kml+xml&layers=WHSE_WATER_MANAGEMENT.WRIS_DAMS_PUBLIC_SVW&styles=3959&height=2048&width=2048&transparent=false&srs=EPSG:4326&format_options=AUTOFIT:true;KMATTR:true;KMPLACEMARK:true;KMSCORE:100;MODE:download;SUPEROVERLAY:false&CQL_FILTER=%22REGION_NAME%22=%27CARIBOO%27&bbox=-139.46653152270716,39.3982201780243,-110.0651303636062,68.79962133712526)

**Give me the attributes and location of the Water Well with Well Tag # 65501, output as JSON**:

[http://openmaps.gov.bc.ca/geo/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&outputFormat=application/json&SrsName=EPSG%3A4326&PROPERTYNAME=WELL_TAG_NUMBER&CQL_FILTER=WELL_TAG_NUMBER%3D65501](http://openmaps.gov.bc.ca/geo/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&outputFormat=application/json&SrsName=EPSG%3A4326&PROPERTYNAME=WELL_TAG_NUMBER&CQL_FILTER=WELL_TAG_NUMBER%3D65501)

**Give me Land Parcel Information at a specified location, output as HTML**:

[https://openmaps.gov.bc.ca/geo/pub/WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW/ows?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&BBOX=48.40785014436799116,-123.36256681214997855,48.41958084268204487,-123.34925222208043749&CRS=EPSG:4326&WIDTH=538&HEIGHT=474&LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&STYLES=&FORMAT=image/png&QUERY_LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&INFO_FORMAT=text/html&I=109&J=187&FEATURE_COUNT=10](https://openmaps.gov.bc.ca/geo/pub/WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW/ows?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&BBOX=48.40785014436799116,-123.36256681214997855,48.41958084268204487,-123.34925222208043749&CRS=EPSG:4326&WIDTH=538&HEIGHT=474&LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&STYLES=&FORMAT=image/png&QUERY_LAYERS=pub:WHSE_CADASTRE.PMBC_PARCEL_FABRIC_POLY_SVW&INFO_FORMAT=text/html&I=109&J=187&FEATURE_COUNT=10)

**Give me all features from the Major Cities layer that fall within a Vancouver Island bounding box, output as JSON**:

[https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=json&typeName=WHSE_BASEMAPPING.BC_MAJOR_CITIES_POINTS_500M&SRSNAME=EPSG%3A3005&CQL_FILTER=WITHIN%28GEOMETRY%2C%20POLYGON%20%28%28830772.7%20367537.4%2C%201202463%20367537.4%2C%201202463%20651616.7%2C%20830772.7%20651616.7%2C%20830772.7%20367537.4%29%29%29](https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=json&typeName=WHSE_BASEMAPPING.BC_MAJOR_CITIES_POINTS_500M&SRSNAME=EPSG%3A3005&CQL_FILTER=WITHIN%28GEOMETRY%2C%20POLYGON%20%28%28830772.7%20367537.4%2C%201202463%20367537.4%2C%201202463%20651616.7%2C%20830772.7%20651616.7%2C%20830772.7%20367537.4%29%29%29)

**Give me the Community Health Service Area based intersection of a point location I supply, output as JSON**:

[https://openmaps.gov.bc.ca/geo/pub/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=pub%3AWHSE_ADMIN_BOUNDARIES.BCHA_CMNTY_HEALTH_SERV_AREA_SP&srsname=EPSG:4326&cql_filter=INTERSECTS(SHAPE,POINT(1224584.57951%20469989.94624))&propertyName=CMNTY_HLTH_SERV_AREA_NAME,LOCAL_HLTH_AREA_NAME,HLTH_SERVICE_DLVR_AREA_NAME,HLTH_AUTHORITY_NAME&outputFormat=application%2Fjson](https://openmaps.gov.bc.ca/geo/pub/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=pub%3AWHSE_ADMIN_BOUNDARIES.BCHA_CMNTY_HEALTH_SERV_AREA_SP&srsname=EPSG:4326&cql_filter=INTERSECTS(SHAPE,POINT(1224584.57951%20469989.94624))&propertyName=CMNTY_HLTH_SERV_AREA_NAME,LOCAL_HLTH_AREA_NAME,HLTH_SERVICE_DLVR_AREA_NAME,HLTH_AUTHORITY_NAME&outputFormat=application%2Fjson)

**Give me the Crown Tenures for a bounding box, output as text**:

[https://openmaps.gov.bc.ca/geo/pub/WHSE_TANTALIS.TA_CROWN_TENURES_SVW/ows?service=WMS&request=GetFeatureInfo&version=1.1.1&layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&styles=2214&format=text/xml&srs=EPSG:4326&width=970&height=485&bbox=-123.35,50.60393449638617,-123,51.593907018763396&query_layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&feature_count=500&x=50&y=50](https://openmaps.gov.bc.ca/geo/pub/WHSE_TANTALIS.TA_CROWN_TENURES_SVW/ows?service=WMS&request=GetFeatureInfo&version=1.1.1&layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&styles=2214&format=text/xml&srs=EPSG:4326&width=970&height=485&bbox=-123.35,50.60393449638617,-123,51.593907018763396&query_layers=pub:WHSE_TANTALIS.TA_CROWN_TENURES_SVW&feature_count=500&x=50&y=50)
-----------------------

## MAX NUMBER OF FEATURE LIMIT - PAGINATION AND WORK-AROUNDS FOR LARGER DATASETS
If you use WFS version 2.0.0 it tells you what the limit is. This is new.
```
<ows:Constraint name="CountDefault">
<ows:NoValues/>
<ows:DefaultValue>10000</ows:DefaultValue>
</ows:Constraint>
</ows:Operation>
```

Using this constraint and a query of the hits in a wfs request allows the developer to page and get all the features they are after, if they are over the constraint.

[https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&CQL_FILTER=DWITHIN(GEOMETRY,POINT(1161815%20452123),1000,meters)&resulttype=hits](https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeName=WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_WRBC_SVW&CQL_FILTER=DWITHIN(GEOMETRY,POINT(1161815%20452123),1000,meters)&resulttype=hits)

Taking from geoserver docs..."Maximum number of features" — Maximum number of features that a WFS GetFeature operation should generate, 
regardless of the actual number of query hits. A WFS request can potentially contain a large dataset that is impractical to download to 
a client, and/or too large for a client’s renderer. Maximum feature limits are also available for feature types. 

 
Some examples for developers - 
1. If I request a count of more than the 10,000 max feature limit.. like this in CSV output:
+ [https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&count=100000](https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=csv&typeNames=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&propertyName=OBJECTID&count=100000)  
+ I will get 10,0001 features returned.. a warning that perhaps there are more features in the object (greater that the WFS max feature limit) – but this isn’t really obvious to the untrained eye.

2. JSON Output with geometry, using a AOI polygon filter request, with a max of 10,000 feature returned if found in the AOI for two layers:
[https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=json&typeName=WHSE_BASEMAPPING.GRID_HEX_CDN_25_SQKM_SP,WHSE_ADMIN_BOUNDARIES.ADM_NR_REGIONS_SPG&propertyName=(SHAPE)(SHAPE)&SRSNAME=EPSG%3A3005&CQL_FILTER=WITHIN%28SHAPE%2C%20POLYGON%20%28%28830772.7%20367537.4%2C%201202463%20367537.4%2C%201202463%20651616.7%2C%20830772.7%20651616.7%2C%20830772.7%20367537.4%29%29%29&count=10000](https://openmaps.gov.bc.ca/geo/pub/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&outputFormat=json&typeName=WHSE_BASEMAPPING.GRID_HEX_CDN_25_SQKM_SP,WHSE_ADMIN_BOUNDARIES.ADM_NR_REGIONS_SPG&propertyName=(SHAPE)(SHAPE)&SRSNAME=EPSG%3A3005&CQL_FILTER=WITHIN%28SHAPE%2C%20POLYGON%20%28%28830772.7%20367537.4%2C%201202463%20367537.4%2C%201202463%20651616.7%2C%20830772.7%20651616.7%2C%20830772.7%20367537.4%29%29%29&count=10000)

 
3. And an example of pagination: 10,000 features returned in two requests.. to do this requires knowledge of the primary key index of the object. (hopefully there is an ObjectID attribute in the object – which isn’t always the case.)
count of 5000, starting at index 0, sorting by Objectid:
[https://openmaps.gov.bc.ca/geo/pub/wfs?service=WFS&version=1.0.0&request=GetFeature&typeName=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&outputFormat=csv&propertyName=OBJECTID&maxFeatures=5000&sortBy=OBJECTID&startIndex=0](https://openmaps.gov.bc.ca/geo/pub/wfs?service=WFS&version=1.0.0&request=GetFeature&typeName=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&outputFormat=csv&propertyName=OBJECTID&maxFeatures=5000&sortBy=OBJECTID&startIndex=0)
 
count of 5000, starting at index 5001, sorting by Objectid:
[https://openmaps.gov.bc.ca/geo/pub/wfs?service=WFS&version=1.0.0&request=GetFeature&typeName=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&outputFormat=csv&propertyName=OBJECTID&maxFeatures=5000&sortBy=OBJECTID&startIndex=5001](https://openmaps.gov.bc.ca/geo/pub/wfs?service=WFS&version=1.0.0&request=GetFeature&typeName=WHSE_ENVIRONMENTAL_MONITORING.EMS_MONITORING_LOCN_GROUPS_SVW&outputFormat=csv&propertyName=OBJECTID&maxFeatures=5000&sortBy=OBJECTID&startIndex=5001)

-----------------------

## OPENLAYERS PREVIEW AND A SIMPLE LEAFLET APP EXAMPLE
Example of an Openlayers output format for preview and exploring

[http://openmaps.gov.bc.ca/geo/pub/wms?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&FORMAT=application/openlayers&TRANSPARENT=true&STYLES=7738&LAYERS=pub%3AWHSE_MINERAL_TENURE.HSP_MJR_MINES_PERMTTD_AREAS_SP&exceptions=application%2Fvnd.ogc.se_inimage&SRS=EPSG%3A3005&WIDTH=512&HEIGHT=441&BBOX=1048725.4914577596%2C996424.7407280033%2C1068271.4654531137%2C1013222.0621302609](http://openmaps.gov.bc.ca/geo/pub/wms?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&FORMAT=application/openlayers&TRANSPARENT=true&STYLES=7738&LAYERS=pub%3AWHSE_MINERAL_TENURE.HSP_MJR_MINES_PERMTTD_AREAS_SP&exceptions=application%2Fvnd.ogc.se_inimage&SRS=EPSG%3A3005&WIDTH=512&HEIGHT=441&BBOX=1048725.4914577596%2C996424.7407280033%2C1068271.4654531137%2C1013222.0621302609)

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
