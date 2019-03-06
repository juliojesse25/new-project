#!/bin/bash

curl "http://localhost:4741/meals" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "meal": {
      "amount": "'"${AMOUNT}"'",
      "unit": "'"${UNIT}"'",
      "receipe_id": "'"${RECEIPE_ID}"'",
      "ingredient_id": "'"${INGREDIENT_ID}"'"
    }
  }'

echo
