#!/bin/bash

# Build countries GeoJSON
cd ne_10m_admin_0_countries
rm countries.json
./build-json.sh
cd ..

# Build states GeoJSON
cd ne_10m_admin_1_states_provinces_shp
rm states.json
./build-json.sh
cd ..

# Build TopoJSON with countries and states
topojson \
  --id-property su_a3 \
  -p name=NAME \
  -p name \
  -o topo.json \
  ne_10m_admin_0_countries/countries.json \
  ne_10m_admin_1_states_provinces_shp/states.json
