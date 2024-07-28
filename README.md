EasyCafe App


Tools & Technologies:
Ruby, Ruby on Rails, HTML/CSS, Materialize CSS, JavaScript, AWS S3 Active Storage, Ruby gems (Devise, CanCanCan, ActiveAdmin, Image processing, i18n, faker), PostgreSQL, Git

Project deployed to Render with Postgres database:
https://easycafe.onrender.com/


Project description:
Web-based application - online restaurant menu.
Unauthorized users can:
- view all menu items,
- revise each menu item in details (him feedbacks and average rating),
- view Gallery's restaurant, Contact page, Vacancy page,
- review useful info (Order Delivery, Privacy Policy, Public Offer pages)

Authorized users have additional permission:
- add feedback and rating for all menu item,
- update own profile.

- Only Admin User have permission:
- add/delete Category for menu,
- delete menu items,
- delete feedbacks & ratings,
- add menu item within category.


The project is based on MVC architectural pattern. 
User authentication implemented with Devise Gem. A
WS S3 Active Storage connected for uploading files. 
Translations are managed through the use of locale files, which store translated text for UA and EN languages. 
Deployed to Render.

