curl "http://localhost:4741/receipes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "receipe": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
