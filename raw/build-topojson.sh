#!/bin/bash

# Build countries GeoJSON
cd ne_10m_admin_0_countries
rm countries.json
./build-json.sh

# Build countries TopoJSON
rm countries.topo.json
topojson \
  --id-property sov_a3 \
  -p name=NAME \
  -p name \
  -q 1e5 \
  -s 0.000000025 \
  -o countries.topo.json \
  ./countries.json
cd ..


# Build states GeoJSON
cd ne_10m_admin_1_states_provinces_shp
rm states.json
./build-json.sh

# Build states TopoJSON
rm states.topo.json
topojson \
  --id-property postal \
  -p name=NAME \
  -p name \
  -p country=sr_sov_a3 \
  -p country \
  -q 1e5 \
  -s 0.000000025 \
  -o states.topo.json \
  ./states.json
cd ..

# Build lakes GeoJSON
cd ne_10m_lakes
rm lakes.json
./build-json.sh

# Build lakes TopoJSON
rm lakes.topo.json
topojson \
  --id-property name \
  -p name=NAME \
  -p name \
  -q 1e5 \
  -s 0.000000025 \
  -o lakes.topo.json \
  ./lakes.json
cd ..

# Build TopoJSON with countries and states
topojson \
  -p name \
  -p country \
  -o topo.json \
  ne_10m_admin_0_countries/countries.topo.json \
  ne_10m_admin_1_states_provinces_shp/states.topo.json \
  ne_10m_lakes/lakes.topo.json
