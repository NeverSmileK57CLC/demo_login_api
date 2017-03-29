# Demo Login API by Devise
- Create file config/database.yml from datbase.yml.example
- Create database and data
	+ rake db:create
	+ rake db:migrate
	+ rake db:seed
- Run server: rails server

Ex API call:
http://localhost:3000/api/sessions?email=ngoc@gmail.com&password=123123
