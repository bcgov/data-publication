
--
-- Include the following SQL for each view where the extent is unknown or known not to be the entire Province.
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
                                 FROM fillInView a) b,
                                 TABLE(mdsys.sdo_util.getvertices(b.mbr)) v
                       )
                )
WHERE table_name = 'fillInView' AND column_name = 'SHAPE'  
/
COMMIT
/

--
-- If a view ("Second View") is known to have the same extent as another view ("First View") whose extent has been calculated above, then this SQL can be used for the view:
--

DELETE FROM user_sdo_geom_metadata WHERE view_name = 'fillInSecondView'
 
INSERT INTO user_sdo_geom_metadata SELECT 'fillInSecondView','SHAPE'/'GEOMETRY',diminfo,srid FROM user_sdo_geom_metadata WHERE table_name = 'fillInFirstView'
 
--
-- If a view is known to have an extent of the whole Province, then this SQL can be used.
--

UPDATE user_sdo_geom_metadata
  SET diminfo = MDSYS.SDO_DIM_ARRAY(
                    MDSYS.SDO_DIM_ELEMENT('X', 200000, 1900000, 0.001),
                    MDSYS.SDO_DIM_ELEMENT('Y', 300000, 1800000, 0.001))
WHERE table_name = 'fillInView' AND column_name = 'SHAPE'  -- or GEOMETRY
/
COMMIT
/

