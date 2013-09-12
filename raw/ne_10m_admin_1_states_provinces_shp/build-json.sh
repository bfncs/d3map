#!/bin/bash
ogr2ogr \
-f GeoJSON \
-where "sr_sov_a3 IN ('DEU')" \
states.json ne_10m_admin_1_states_provinces_shp.shp
