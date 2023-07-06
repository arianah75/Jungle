# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Screenshots

### Home Page

!["Screenshot of home page"](https://github.com/arianah75/Jungle/blob/master/doc/home_page.png?raw=true)

### Product Page

!["Screenshot of product page"](https://github.com/arianah75/Jungle/blob/master/doc/product.png?raw=true)

### Sign Up Page

!["Screenshot of sign up page"](https://github.com/arianah75/Jungle/blob/master/doc/sign_up.png?raw=true)

### Cart Page

!["Screenshot of cart page"](https://github.com/arianah75/Jungle/blob/master/doc/cart_page.png?raw=true)

### Pay Out Page

!["Screenshot of pay out page"](https://github.com/arianah75/Jungle/blob/master/doc/payout.png?raw=true)

### Admin Page

!["Screenshot of admin page"](https://github.com/arianah75/Jungle/blob/master/doc/admin_page.png?raw=true)
