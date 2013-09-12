#!/bin/bash
topojson \
  --id-property su_a3 \
  -p name=NAME \
  -p name \
  -o topo.json \
  ne_10m_admin_0_countries/countries.json \
  ne_10m_admin_1_states_provinces_shp/states.json
