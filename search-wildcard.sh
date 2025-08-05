#!/bin/bash

searchTerm=$1

source .environments

curl -s -XPOST -H "Authorization: ApiKey $API_KEY" -H "Content-Type: application/json" \
  "$ES_URL/fruits/_search" \
  -d "{\"query\": {\"wildcard\": {\"name\": \"*$searchTerm*\"}}}" | \
jq -r '.hits.hits[]._source.name' | paste -sd ", " -
