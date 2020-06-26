# HOW IT WORKS
The bash scripts will utilize [todo.txt](http://todotxt.org) and [this api](https://clockify.me/developers-api#operation--v1-workspaces--workspaceId--time-entries-post) to check if anything was done today with @work tag, and if so update clockify for today (from 09:00 AM to 06:00AM)

# HOW TO RUN THIS
## CONFIGURATION
1. copy the env.example to .env
```bash
cp env.example .env
```
1. Setup an API key if you don't have it and add it as MY_KEY to the .env
https://clockify.me/user/settings
1. Get Workspace ID and add it as MY_WRKSPC
https://clockify.me/developers-api#operation--v1-workspaces-get
1. Get Project ID and add it as MY_PRJ
https://clockify.me/developers-api#operation--v1-workspaces--workspaceId--projects-get
## RUNNING
add a scheduled task to run ./check-work.sh

# NEW FEATURES
- [] Add the todo.txt tasks inside the api call description
- [] Use todo.txt projects inside the api calls projects
- [] Add a switch to make sure you can turn the above tasks off if need to (Maybe not everyone would want to show the tasks)

TESTED ON MANJARO ONLY
