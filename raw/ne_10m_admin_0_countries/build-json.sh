#!/bin/bash

ogr2ogr \
-f GeoJSON \
-where "adm0_a3 IN ('POL', 'DNK', 'NLD', 'CZE', 'FRA', 'AUT', 'CHE', 'LUX', 'BEL', 'LIE', 'SVK', 'SVN', 'HUN', 'ITA', 'HRV')" \
-clipdst 1.5 44 20 56 \
countries.json \
ne_10m_admin_0_countries.shp
