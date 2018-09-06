This is an app designed to help keep track of workouts. The front end interacts with an API that I built that can be found https://git.heroku.com/workoutapi.git
The front end can be found deployed at https://julian-sirkin.github.io/workoutFrontEnd/
Basic planning can be found here https://git.generalassemb.ly/ga-wdi-boston/full-stack-project/issues/1757

This contains the front end for token authenticaton, which this then uses to authenticate all actions when interacting with the API.

Technologies used:
Ruby on rails

- The app works by grabbing information from varrious forms and making calls to one of four paths.
- users (sign-in, sign-up sign-out, change-password, log-out,)
- workout (crud)
- exercises (crud)
- workoutexercises (crud)
- Workoutexercises is a join table to establish the many to many relationship between workouts and exercises
- Workoutexercises also contains specific information about the particular relationship between that exercise and that particular workout. (The reps/sets/time can be different workout to workout)
- Workouts and workoutexercises are both in protected controllers, so only the user can see the information
- Exercises are in an OpenReadController, so anybody can see any exercise, and add that to their workout




Unsolved problems:
I need to add routines, and create a relationship to workouts. This would be a many to many relationship with workouts. I also need to fix exactly what some of my columns are for the resources I have. Some of it is a little awkward.
