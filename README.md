# Servisim Backend

It's the Ruby on Rails REST API backend for the mobile application, called Servisim.

## Documentation

Source code and API documentation can be found on the route `/docs/v1`.

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

Deployment will be done automatically by our CI/CD system.
