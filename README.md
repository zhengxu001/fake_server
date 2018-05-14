# Fake Server
A fake server that can allow users create, manage and share APIs, which can be used for API integration testing and API Document Management.

## Getting Started
Fake Server allows anyone — be it your development team or your end consumers — to create, visualize and interact with the API’s resources without having any of the implementation logic in place. It’s automatically generated from input, with the visual documentation making it easy for backend implementation and client side consumption.

### Prerequisites

* Ruby version: 2.4.0

* Configuration: Set up your database information in `config/database.yml`

* Database creation: `rake db:create`

* Database initialization `rake db:migrate`

* Test: **Pending**
### Installing

A step by step series of examples that you can run this application locally

```
git clone
bundle install
rake db:create
rake db:migrate
rails s
```

Open `http://localhost:3000/` you will find your application is running on 3000 port.

## Deployment
This application has been deployed on Heroku. Please refer to https://guarded-shore-13048.herokuapp.com/ for more details. At the mean while, more features are under development. See ToDo

## ToDo
- [ ] Email Server
- [ ] Registry Confirmation
- [ ] Password Reset
- [ ] Profile Page Refactor
- [ ] Check the response format and request body format
- [ ] Support Body for Post and Put
- [ ] Share url within Organization
- [ ] Support Multiple Project

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details