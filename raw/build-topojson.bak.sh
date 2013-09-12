#!/bin/bash
topojson \
  --id-property su_a3 \
  -p name=NAME \
  -p name \
  -o nlgeo.json \
  ne_10m_admin_0_countries/countries.json \
  ne_10m_populated_places/places.json
