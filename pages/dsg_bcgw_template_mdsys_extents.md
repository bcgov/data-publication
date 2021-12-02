---
layout: default
title: Data Delivery - SDO Extents
nav_order: 421
parent: Publication Workflow - Vendors
grand_parent: BC Geographic Warehouse
has_toc: false
---


```
--
-- Include the following SQL for each table and view where the extent is unknown or known not to be the entire Province.
--

UPDATE user_sdo_geom_metadata
  SET diminfo = ( SELECT MDSYS.SDO_DIM_ARRAY(
                    MDSYS.SDO_DIM_ELEMENT('X', minx, maxx, 0.001),
                    MDSYS.SDO_DIM_ELEMENT('Y', miny, maxy, 0.001)) as diminfo
                  FROM ( SELECT TRUNC( MIN( v.x ) - 1,0) as minx,
                                ROUND( MAX( v.x ) + 1,0) as maxx,
                                TRUNC( MIN( v.y ) - 1,0) as miny,
                                ROUND( MAX( v.y ) + 1,0) as maxy
                         FROM (SELECT SDO_AGGR_MBR(a.SHAPE) as mbr
                                 FROM fillInTable a) b,
                                 TABLE(mdsys.sdo_util.getvertices(b.mbr)) v
                       )
                )
WHERE table_name = 'fillInTable' AND column_name = 'SHAPE'  -- or GEOMETRY
/
COMMIT
/

--
-- If a view is known to have the same extent as another table whose extent has been calculated above, then this SQL can be used for the view:
--

DELETE FROM user_sdo_geom_metadata WHERE table_name = 'fillInView'
/
 
INSERT INTO user_sdo_geom_metadata SELECT 'fillInView','SHAPE'/'GEOMETRY',diminfo,srid FROM user_sdo_geom_metadata WHERE table_name = 'fillInTable'
/

--
-- If a table or view is known to have an extent of the whole Province, then this SQL can be used.
--

UPDATE user_sdo_geom_metadata
  SET diminfo = MDSYS.SDO_DIM_ARRAY(
                    MDSYS.SDO_DIM_ELEMENT('X', 200000, 1900000, 0.001),
                    MDSYS.SDO_DIM_ELEMENT('Y', 300000, 1800000, 0.001))
WHERE table_name = 'fillInTableOrView' AND column_name = 'SHAPE'  -- or GEOMETRY
/
COMMIT
/
```
