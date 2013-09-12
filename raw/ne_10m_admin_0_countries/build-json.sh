#!/bin/bash

ogr2ogr \
-f GeoJSON \
-where "adm0_a3 IN ('GBR', 'DEU', 'POL', 'DNK', 'NLD', 'CZE', 'FRA', 'AUT', 'CHE', 'LUX', 'BEL', 'LIE')" \
countries.json \
ne_10m_admin_0_countries.shp
