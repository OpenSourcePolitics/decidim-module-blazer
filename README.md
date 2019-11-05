# Decidim::Blazer

Business intelligence made simple.

## Usage

Blazer will be available as a Component for a Participatory
Space.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'decidim-blazer'
```

And then execute:

```bash
bundle
```

install migrations:
```bash
bundle exec rake decidim_blazer:install:migrations
```

then:
```bash
bundle exec rake db:migrate
```

if you want to use your production database with the current user, set it in config/secrets.yml

````yaml
blazer:
    use_production_database: true
````

else set `BLAZER_DATABASE_URL` env

## Contributing

See [Decidim](https://github.com/decidim/decidim).

## License

This engine is distributed under the GNU AFFERO GENERAL PUBLIC LICENSE.
