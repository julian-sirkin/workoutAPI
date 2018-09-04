#!/bin/bash

curl "http://localhost:4741/exercises/" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "exercise": {
      "name": "'"${NAME}"'",
      "user_id": "'"${ID}"'",
      "exercise_type": "'"${TYPE}"'",
      "duration": "'"${DURATION}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
