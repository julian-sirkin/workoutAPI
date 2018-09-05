#!/bin/bash

curl "http://localhost:4741/workoutexercises/" \
  --include \
  --request POST \
    --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "workoutexercise": {
      "workout_id": "'"${WORKOUT}"'",
      "exercise_id": "'"${EXERCISE}"'",
      "reps": "'"${REPS}"'",
      "sets": "'"${SETS}"'",
      "distance": "'"${DISTANCE}"'",
      "notes": "'"${notes}"'"
    }
  }'

echo
