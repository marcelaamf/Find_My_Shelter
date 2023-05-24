# Find My Shelter

Introducing Find My Shelter, a revolutionary mobile application designed to provide immediate assistance to users in need. Find My Shelter is a user-friendly app that empowers individuals to search for nearby shelters based on their needs.

With Find My Shelter, finding the right shelter has never been easier. The app offers a comprehensive database of shelters, categorized by types such as emergency shelters, women's shelters, family shelters, and more. Users can conveniently browse through various shelter options, tailored to their unique circumstances and needs


The app utilizes cutting-edge geolocation technology to provide real-time information on shelters nearby. Users can easily view shelter details such as address, contact information, available amenities, and capacity. Each shelter listing includes a description, providing valuable insights into the shelter's mission, services, and any specific criteria for admission.

## Pictures
!["Main page mobile"](https://github.com/marcelaamf/Find_My_Shelter/blob/master/app/assets/images/app.png?raw=true)
!["Shelter category"](https://github.com/marcelaamf/Find_My_Shelter/blob/master/app/assets/images/shelter_category.png?raw=true)
!["Approved donation"](https://github.com/marcelaamf/Find_My_Shelter/blob/master/app/assets/images/donation_app.png?raw=true)
!["Admin dashboard"](https://github.com/marcelaamf/Find_My_Shelter/blob/master/app/assets/images/dashboard.png?raw=true)
!["Donation report"](https://github.com/marcelaamf/Find_My_Shelter/blob/master/app/assets/images/donation.png?raw=true)
!["Admin Shelters"](https://github.com/marcelaamf/Find_My_Shelter/blob/master/app/assets/images/shelters.png?raw=true)


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
