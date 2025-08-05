source .environments

curl -XPOST -H "Authorization: ApiKey $API_KEY" -H "Content-Type: application/json" "$ES_URL/fruits/_count"  -d @payloads/match_all.json

echo ""