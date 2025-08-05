source .environments

curl -XDELETE -H "Authorization: ApiKey $API_KEY"  "$ES_URL/fruits"

echo ""

curl -XPUT -H "Authorization: ApiKey $API_KEY" -H "Content-Type: application/json" "$ES_URL/fruits"  -d @indexes/fruits.json

echo ""

curl -H "Content-Type: application/x-ndjson" -X POST -H "Authorization: ApiKey $API_KEY" "$ES_URL/fruits/_bulk" --data-binary @fruits_bulk_payload.ndjson

echo ""
