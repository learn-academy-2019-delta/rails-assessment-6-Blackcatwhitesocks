# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
  
  Model (Active Record) handles relationships between objects and databases.
View presents the data in the particular format determined by the controller.
Controller organizes data to fit the needs of the view, and directs the traffic within the controller.


  Researched answer:
  
The Model View Controller principle divides the work of an application into three separate but closely cooperative subsystems.
Model – Active Record 

Model:
This subsystem is implemented in ActiveRecord library, which provides an interface and binding between the tables in a relational database and the Ruby program code that manipulates database records. Ruby method names are automatically generated from the field names of database tables.
View:
This subsystem is implemented in ActionView library, which is an Embedded Ruby (ERb) based system for defining presentation templates for data presentation. Every Web connection to a Rails application results in the displaying of a view.
Controller:

This subsystem is implemented in ActionController, which is a data broker sitting between ActiveRecord (the database interface) and ActionView (the presentation engine).



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the ______route___ in the file config/routes
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the _____method_______ in the file _____controllers________
  ```
  class ___statics_________ < ApplicationController
    def ____about_______
      render: ____about.html.erb____________
    end
  end
  ```

  Step 3: Create the View in the file ___views___________
  code:
  ```
  <div>This is the About page!</div>
  ```


3. Consider the Rails routes below. Describe the responsibility of  each route. Which routes must always be passed params and why?

```
/users/       method="GET"     # :controller => 'users', :action => 'index' => Display users 
/users/1      method="GET"     # :controller => 'users', :action => 'show' => Display a specific user
/users/new    method="GET"     # :controller => 'users', :action => 'new' => Return an HTML form for creating a new user
/users/       method="POST"    # :controller => 'users', :action => 'create' => Create a new user
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit' => Return HTML form for editing a user
/users/1      method="PUT"     # :controller => 'users', :action => 'update' => Update a specific user
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy' => Delete a specific user 
```





4. What is the public folder used for in Rails?

  Your answer:
Public or static files that won’t get compiled through the asset pipeline, it’s better not to touch them..


  Researched answer:
  Anything put here will be available to the world as http://www.myapp.com/filename. Things like 500.html go here, because this directory still works when your app crashes. You can also serve out static assets, like CSS files or images. Feel free to make subdirectories.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

Rails.application.routes.draw do
get '/game/guess' => 'main#game'




6. What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
Your application has a session for each user in which you can store small amounts of data that will be persisted between requests. The session is only available in the controller and the view and can use one of a number of different storage mechanisms:
•	CookieStore – Stores everything on the client.
•	DRbStore – Stores the data on a DRb server.
•	MemCacheStore – Stores the data in a memcache.
•	ActiveRecordStore – Stores the data in a database using Active Record.
All session stores use a cookie to store a unique ID for each session (you must use a cookie, Rails will not allow you to pass the session ID in the URL as this is less secure).

Your application can store small amounts of data on the client — called cookies — that will be persisted across requests and even sessions. Rails provides easy access to cookies via the cookies method, which — much like the session — works like a hash.
Note that while for session values you set the key to nil, to delete a cookie value you should use cookies.delete(:key).





7. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:

  Researched answer:
  
  HTTP defines a set of request methods to indicate the desired action to be performed for a given resource. Although they can also be nouns, these request methods are sometimes referred as HTTP verbs. Each of them implements a different semantic, but some common features are shared by a group of them: e.g. a request method can be safe, idempotent, or cacheable.






8. Name two rails generator commands and what files they create:

  Your answer: rails generate controller, rails generate resource 

  Researched answer:
The most commonly used generators are Controller, Model, Resource, and Scaffold. Controller is unique in that you don’t put table column names and types after the controller name, but you put the methods you want included in the new controller. The downside to creating controllers this way is that it creates unnecessary views because it creates a view for each method you enter. Model and Resource are very similar generators. Model creates a migration, model , and tests for the files that were generated. Resource command does everything Model command does, but also creates a controller, empty views folder, and resource routes. The Scaffold generator is the final generator I will discuss, and it creates and completes the model, controller, and all the views needed for restful routing and full crud functionality.

Rails Destroy is very useful when you are first creating your project because you are bound to have a typo or you change your mind about the relationships between your models. The destroy command with go through every path that a generator will use to create a file, but it will remove the file instead.



9. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. 	got better idea about active record

2. migrations 

3. hashes 
