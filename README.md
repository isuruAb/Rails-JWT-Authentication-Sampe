# README

Clone this repo

`git clone https://github.com/isuruAb/Rails-JWT-Authentication-Sample.git`

* Create a db in your mysql server and add that name to the config/database.yml file

Install dependencies 

`bundle i`

run migrations

`rails db:migrate`

seed the databse

`rails db:seed`

run application 

`rails s`

use this curl command to get your JWT token

`curl -X POST http://localhost:3000/api/user_token -H 'Content-Type: application/json' -d '{"auth": {"email": "admin@elephant.com", "password": "passElephant"}}'`

use your token with other requests

`curl -X GET http://localhost:3000/api/elephants -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MzYyODU5NjgsInN1YiI6NX0.4o8rSTptRtUbv5fCc_S-fTXvcBKsw54Buhi-xvhzvlg'  `

