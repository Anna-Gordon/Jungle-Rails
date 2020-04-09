# Jungle

A mini e-commerce application built with Rails 4.2 for purposes. Two types of users: Client and Admin. Admin can create categories and products. Client can register, make purchase and pay for order. 


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Generate the binstub `bundle binstubs rspec-core`. Run RSpec `bin/rspec`

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Money Rails
* Capybara
* RSpec
* Poltergeist

## Screenshots

!["Home_page"](https://github.com/Anna-Gordon/Jungle-Rails/blob/master/docs/Home_page.png?raw=true)
!["Order_details_page"](https://github.com/Anna-Gordon/Jungle-Rails/blob/master/docs/Order_details_page.png?raw=true)
