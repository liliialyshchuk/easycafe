# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
EasyCafe App

Tools & Technologies: Ruby, Ruby on Rails, HTML/CSS, Materialize CSS, JavaScript, AWS S3 Active Storage, Ruby gems (Devise, CanCanCan, ActiveAdmin, Image processing, i18n, faker), PostgreSQL, Git

Project deployed to Render with PostgreSQL database: https://easycafe.onrender.com/

The project is based on MVC architectural pattern. 
User authentication implemented with Devise Gem. 
AWS S3 Active Storage connected for uploading files. 
Translations are managed through the use of locale files, which store translated text for UA and EN languages. 
Framework Materialize CSS added and used to develop the system of design.

Project description: Web-based application - online restaurant menu. 
Unauthorized users can:
- view all menu items,
- revise each menu item in details (him feedbacks and average rating),
- view Gallery's restaurant, Contact page, Vacancy page,
- review useful info (Order Delivery, Privacy Policy, Public Offer pages)
Authorized users have additional permission:
- add Feedback and Rating for all menu item,
- update own Profile.
Only Admin User have permission:
- add/delete Category for menu,
- delete menu Items,
- delete Feedbacks & Ratings,
- add menu Items within category.