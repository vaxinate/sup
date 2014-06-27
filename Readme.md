# Sup

sup is a clone of Yo just for funsies

# Setup

* clone repo
* ``` rake db:create db:schema:load```
* rails s

# API docs

sign up: POST /users/sign_up.json 
```
{ "user" : {
  "username": "<username>",
  "email": "<email>",
  "password": "<password>",
  "confirm_password": "<password>"
}}
```

sign in: POST /users/sign_in.json
```
{ "user" : {
  "username": "<username>",
  "password": "<password>"
}}
```

say sup: POST /sups.json
```
{ "sup": {
  sender_id: <int>,
  recipient_id: <int>
}}
