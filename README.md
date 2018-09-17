This is an app designed to help keep track of workouts. The front end interacts with an API that I built that can be found https://git.heroku.com/workoutapi.git
Front end repo -- https://github.com/julian-sirkin/workoutFrontEnd
back end repo -- https://github.com/julian-sirkin/workoutAPI
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

Development Process:
I started testing the authentication.
After that I used the scaffold functionality to create a workout resource
I then made sure it was properly connected to the user
I made the controller into a closed controller, so only the user could see their workouts
After that I moved to the front end to connect all that up
I then added a second resource, and tested that
I created a join table to connect the two resources
I then adjusted controllers properly and started to test via curl scripts




Unsolved problems:
I need to add routines, and create a relationship to workouts. This would be a many to many relationship with workouts. I also need to fix exactly what some of my columns are for the resources I have. Some of it is a little awkward.



Problem solving:
So I had to double check my spelling for a lot of things. In this particular case, I was sloppy about that, and that caused me a number of errors.
Beyond that, when I would run into problems, I would run through the pattern. Start with the routes, move to the controller, then the model, and serializer. I had to google and ask about a few things, because I had to do some things I had never done before, such as destroy dependents.
I ran into a problem, where I could delete some resources, but not others. It was by looking at the full object of what I was trying to delete, that I found I couldn't get it to delete if it had a relationship vai my join table. I then had to figure out how to resolve that.
