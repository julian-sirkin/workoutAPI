#!/bin/bash

curl "http://localhost:4741/workouts/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "workout": {
      "user_id": "'"${ID}"'",
      "completed_on": "'"${DATE}"'",
      "workout_type": "'"${TYPE}"'",
      "duration": "'"${DURATION}"'"
    }
  }'

echo
