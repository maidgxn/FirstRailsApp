## generate a MVC for you
rails g controller home index

rails g scaffold *model* *column1*:*data_type* *column2*:*data_type* ... [Ref](https://guides.rubyonrails.org/v3.2/migrations.html)

rails db:migrate

rails g pundit:install

rails g pundit:install user

## config your homepage in config/routes

```root 'home#index' <= the # just for the root page```

* check all routes

```rails routes```

look at the *prefix* columns to know how to use them in the app, just add 

prefix + _ path ± example: root_path, home_about_path

## when create a page, what is the important things to remember?

You can just use ```rails g ...``` like above, but just keep in mind 3 things to change when add a new page manually:

* views folder

* config/routes

* controllers/page-need-to-add