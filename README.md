# README

USA North 811 E-Ticket Sign Up

*Ruby 2.3.3

*Rails 5.0.3

*Configured with Puma 

*Configured with Postgresql
	- There is no database currently being used
	- All user info is recieved as a hash and exported as json

* How to deploy
	- move to the directory where the app will be stored
	- clone from git repository to local machine
		- git clone https://github.com/cwoo107/E-Ticket_sign_up.git
	- within the app directory, run "rake db:migrate"
	- run "rake routes"
	- run "rails s"