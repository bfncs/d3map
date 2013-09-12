#!/bin/bash
ogr2ogr \
  -f GeoJSON \
  -where "adm0_a3 IN ('DEU', 'AUT', 'CHE') AND SCALERANK < 6" \
  places.json \
  ne_10m_populated_places.shp
