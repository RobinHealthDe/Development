# Robin Health PRODUCTION

## Information and general workflow
This is the Robin Health Repository for **production purposes**. 
- All features should be developed in dedicated feature branches. 
- Upon completion, make sure all tests are still green and do a pull request. 
- The master is always automatically deployed to Heroku.

##Commit messages
Commit messages should look as followed `@github_username STORYNUMBER Commit message`
Please commit early and often!

## Dependencies and Versions
### Ruby
The Ruby Version was fixed to `2.2.0`

### Rails
The Rails Version was fixed to `4.2.0`

### Bootstrap
Bootstrap has already been included and can be found in the asset pipeline

##Initial install
Make sure the fixed Ruby as well as Rails versions are installed. For Ruby versioning I recommend using rbenv.
1. Clone repository
2. cd into root
3. Run `gem install bundler`
4. Run `bundle install`
5. Run `rake db:create`
6. Run `rake db:migrate`

##Run server
`rails s`
Runs on localhost:3000

##Run tests
`rspec`