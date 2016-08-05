# README

The Isolator

#### Available online

Visit https://isolator.herokuapp.com


#### Ruby version

2.3.1

#### System dependencies

None

#### Configuration

None

#### Database creation

Uses Postgresql - can set up databases with `rake db:create`

#### Database initialization

`rake db:setup` will load the schema

#### How to run the test suite

Running `rake` will run RSpec and Cucumber tests

#### Services (job queues, cache servers, search engines, etc.)

None

#### Deployment instructions

Configured for TravisCI - push to master on github, and a Travis build will be triggered. A successful build on the master branch will cause the code to deploy and Rails migrations to run
