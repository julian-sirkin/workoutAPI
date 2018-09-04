#!/bin/bash

curl "http://localhost:4741/exercises/${ID}" \
  --include \
  --request PATCH \
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
