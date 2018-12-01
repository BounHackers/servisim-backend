# Servisim Backend

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy) [![MIT License](https://img.shields.io/dub/l/vibe-d.svg)](https://raw.githubusercontent.com/BounHackers/servisim-backend/master/LICENSE) [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues) ![GitHub issues](https://img.shields.io/github/issues/badges/shields.svg)


It's the Ruby on Rails REST API backend for the mobile application, called Servisim.

Current API root: https://servisimapp.herokuapp.com/api/v1/

## Documentation

Source code and API documentation can be found on the route `/docs/v1`, or here: https://servisimapp.herokuapp.com/docs/v1/. You should see a screen like this:

<img width="400" alt="screen shot 2018-12-01 at 21 29 56" src="https://user-images.githubusercontent.com/13895224/49331665-fbf5b300-f5b1-11e8-9705-f4a2f2e168b7.png">

## Development

1. Clone the repo:
```
git clone git@github.com:BounHackers/servisim-backend.git
cd servisim-backend
```

2. We're currently using Ruby 2.5.1, so go download it. You can always see the Ruby version we're using in the `.ruby-version` file.

3. We use PostgreSQL v10.5 for our database, go download it.

3. Install the dependencies:
```
gem install bundler
bundle
```

4. Create the development database:
```
bundle exec rails db:migrate
```

5. Run the application and you're good to go:
```
bundle exec rails s
```

## Code Style
We are using "the Rails way" as our code style. You can check the Rails conventions here: https://github.com/rubocop-hq/rails-style-guide


## Code Quality

Before every commit, run the linter and fix your linting issues automatically:
```
bundle exec rubocop --auto-correct
```

## Pull Requests

- [Read this very good post and follow the advices](https://medium.com/@mscccc/jr-developers-1-pull-requests-you-39a11c3bdd94)
- Follow the PR template and remove the unused sections
- Always keep this in mind that you've spent a good amount of time on this issue trying to find a solution but the reviewer has no idea. So, explain it as you explain to a stranger.

## Deployment

Deployment will be done automatically by our CI/CD system. We're using Heroku as our PaaS solution and a CI/CD system.

We have 2 branches: `develop` and `master`. `master` branch is protected from direct pushes, and PR merges to `master` is also protected by our CI system.
For your PR to be accepted, it should pass all the tests and it shouldn't contain any linting errors. Here's the steps you should take from opening your PR to deployment:

1. Push your branch and open your PR, according to the PR descriptions above.

2. Tests will be run automatically by our CI integration; so just wait a bit. In case your tests fail, click on the link to see the errors and fix them.

3. After your tests pass, request a review from a contributor or code-owner.

4. When your PR passes the review, merge it to `develop`; our CD system will automatically push it to production when it's on `master`.

## License

[MIT](https://raw.githubusercontent.com/BounHackers/servisim-backend/master/LICENSE)
