source .environments

curl -H "Authorization: ApiKey $API_KEY" -H "Content-Type: application/json" "$ES_URL/_cat/indices"

echo ""