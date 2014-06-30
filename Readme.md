# Sup

sup is a clone of Yo just for funsies. it is minimally secure at best.

# Setup

* clone repo
* ``` rake db:create db:schema:load```
* rails s

# API docs

sign up: POST /users/sign_up.json 
```
# request body
{ "user" : {
  "username": "<username>",
  "email": "<email>",
  "password": "<password>",
  "confirm_password": "<password>"
}}

# response body
{ "user" : {
  "username": <username>,
  "authorization_token": <auth token>,
  # more stuff that doesn't matter (should probably be cleaned up for security)
}}
```

sign in: POST /users/sign_in.json
```
# request body
{ "user" : {
  "username": "<username>",
  "password": "<password>"
}}

# response body is same as sign_up
```

say sup: POST /sups.json
```
# request body (requires auth headers to be set, X-User-Username, X-User-Token)
{ "sup": {
  sender_id: <int>,
  recipient_id: <int>
}}
```
