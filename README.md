# Rails 6 with Bootstrap

* Ruby version 2.7.2, rails 6.0.2 with Postgresql

* Bootstrap guide https://dev.to/shahershamroukh/add-bootstrap-and-fontawesome-to-your-ruby-on-rails-6-application-3fm7

* Bootstrap javascript and css imported in app/javascript/packs/application.js

* Bootstrap css stored in app/javascript/stylescheets

* To check that everything is working go to localhost:3000/hello/hello

* To remove the demo controller

````bash
$ rails destroy controller hello
````

* To remove navigation bar, tooltip and popover got to  /app/views/layouts/application.html.erb

## Credentials

```
$ EDITOR="code --wait" bin/rails credentials:edit
```
In a new project, you might have to delete credentials.yml.enc on the first run.

* to add credentials to Heroku add the master.key salt as a variable with the key 'RAILS_MASTER_KEY'.
## Devise

````bash
joelesli in ~/Documents/Code/rails/rails-6-bootstrap (master) > rails generate devise:install
Running via Spring preloader in process 65267
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
===============================================================================

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"
     
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
       
     * Not required *

===============================================================================
````

## Devise enforce secure password

````bash
===============================================================================

Additional setup required:

  1. Verify that default settings in config/initializers/secure_password.rb
     are suitable for your purposes.

  2. Enable secure_password modules by adding all of them or just the ones you
     want to your User model. See the README for instructions.

  3. Perform a database migration to create the PreviousPasswords table. This
     step is not necessary if you only intend to enable the password content
     module (password_has_required_content). See the README for instructions.

  4. Add flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

===============================================================================
````