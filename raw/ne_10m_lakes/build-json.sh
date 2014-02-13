#!/bin/bash

ogr2ogr \
-f GeoJSON \
-where "scalerank <= 2" \
-clipdst 1.5 44 20 56 \
lakes.json \
ne_10m_lakes.shp
