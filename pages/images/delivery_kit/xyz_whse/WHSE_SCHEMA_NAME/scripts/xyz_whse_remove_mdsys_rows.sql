--
-- remove USER_SDO_GEOM_METADATA rows for the datasets dropped as part of an uninstall
--

DELETE FROM user_sdo_geom_metadata WHERE table_name = 'fillInTableOrView';
-- repeat for all spatial tables and views
COMMIT;
