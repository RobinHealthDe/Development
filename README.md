# Robin Health DEVELOPMENT

## Information and general workflow
This is the Robin Health Repository for **development purposes**.
- All features should be developed in dedicated feature branches.
- Upon completion, make sure all tests are still green and do a pull request.
- The master is always automatically deployed to Heroku under `https://robinhealthdevelopment.herokuapp.com/`

## Git workflow
### General rules:
- Please use rebase workflow: `http://randyfay.com/content/rebase-workflow-git`.
- Please always use `--no-ff` when merging your branch to master.
- Please commit early and often.

### Commit messages:
- Capitalized, short summary + more detailed description in next paragraphs if necessary.
- Written in imperative: "Fix bug" and not "Fixed bug".
- Merge commits should include STORYNUMBER before the text message.
- If a commit adds or modifies migrations, add [M] at the beginning of the message

## Dependencies and Versions
### Ruby
The Ruby Version was fixed to `2.2.2`

### Rails
The Rails Version was fixed to `4.2.0`

### Bootstrap
Bootstrap has already been included and can be found in the asset pipeline

## Initial install
- Make sure the fixed Ruby as well as Rails versions are installed. For Ruby versioning I recommend using rbenv.
- Clone repository
- cd into root
- Run `gem install bundler`
- Run `bundle install`
- Run `rake db:create`
- Run `rake db:migrate`

## Run server
`rails s`
Runs on `localhost:3000`. A initial route for root and dummy page has been created and can be found under `main#home`

## Run tests
`rspec`
