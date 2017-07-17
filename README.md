# Alexa Food Tracker

[![CircleCI](https://circleci.com/gh/trueheart78/alexa-food-tracker.svg?style=svg)](https://circleci.com/gh/trueheart78/alexa-food-tracker)

A lovely WIP :heart:

## Versions

Runs on Rails 5.1 and Ruby 2.4 using Postgresql 9.6.

## Authentication

[Clearance][clearance] is the library of choice for simple authentication.

## Logging Records

[Paper Trail][paper_trail] is used for logging data for change-management on a per-class basis.

## Testing

Standard [RSpec][rspec] and [FactoryGirl][factory_girl].

```
bundle exec rspec
```

[clearance]: https://github.com/thoughtbot/clearance
[paper_trail]: https://github.com/airblade/paper_trail
[rspec]: https://github.com/rspec/rspec-rails
[factory_girl]: https://github.com/thoughtbot/factory_girl_rails 
