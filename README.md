# Scouthub

## Development

* **Gems installation:** `bundle`
* **Database setup:** `rake db:setup`
* **Server:** `bundle exec guard` or `rails s -p 3000` and open [http://localhost:3000](http://localhost:3000)
* Admin and app user details can be located in `db/seeds.rb`

## Heroku

### Staging

* **Setup:** `git remote add staging git@heroku.com:some-staging-repo.git`
* **Deploy:** `deploy staging`
* **Running commands:** `heroku run <command> -a some-staging-repo`

### Production

* **Setup:** `git remote add production git@heroku.com:some-production-repo.git`
* **Deploy:** `deploy production`
* **Running commands:** `heroku run <command> -a some-production-repo`
