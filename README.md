# Movies And Reviews

This is a ruby on rails application for summarizing movies data

Technologies:

* Ruby on rails
* Ruby
* Postgresql
* HTML
* Bootstrap
* Javascript/Jquery

How to run
* Checkout code
* Bundle install
* rails db:setup
* rails server

Model

* Movie
    - movies has many reviews
    - movies has many actors
    - movies belongs to director
    - Movies belongs to location
* User
    - User has many reviews
* Artist : used to store artists such as actors and directors
    - Parent class for Actor and Direct
* Actor : Which is mapped with artists table having type 'Actor'
    - has many movies through movie actors
* Director : Which is mapped with artists table having type 'Director'
    - Director has many movies
* Location
    - Has many movies
* MovieActor
    - Used to connect movies and actors

Services

* ImportMoviesService
    - Used to import movies CSV file and insert data
* ImportReviewsService
    - Used to import reviews CSV file and insert data
