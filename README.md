# Minishop

## Create project
```bash
rails new Minishop -c sass -j esbuild -d mysql
cd Minishop
code .
```

## Push on github
```bash
git status
git remote add origin git@github.com:nhson2022/Minishop.git
git add -A
git commit -m "create my project"
git push -u origin main
```
## Update config/database.yml
```yml
host: localhost
port: 3306
username: root
password: Son@2023

database:
    Minishop_development
    Minishop_test
```
## Create database on mysql
```bash
rails db:create
```

## Setup Bootstrap
```bash
yarn add bootstrap jquery @popperjs/core select2
```
**Update app/assets/stylesheets/application.sass.scss**
```scss
@import "bootstrap/dist/css/bootstrap";
@import "select2/dist/css/select2";
```

## Run to test
```bash
./bin/dev
```
**Listening on http://127.0.0.1:3000**

## Setup Active Storage and Action Text
```bash
bin/rails active_storage:install
bin/rails action_text:install
bin/rails db:migrate
```

## Setup Devise
```bash
bundle add devise
rails generate devise:install
rails g devise:views
rails generate devise User
```
**Insert to table User with isadmin:boolean, first_name:text, last_name:text**
```bash
bin/rails generate migration AddIsAdminToUsers isadmin:boolean first_name:text last_name:text
rails db:migrate
```
**Update app/views/layouts/application.html.erb**
```html
<div class="container">
  <% if notice.present? %>
    <div class="alert alert-primary mt-4" role="alert">
      <%= notice %>
    </div>
  <% end %>

  <% if alert.present? %>
    <div class="alert alert-danger mt-4" role="alert">
      <%= alert %>
    </div>
  <% end %>

  <%= yield %>
</div>
```
## Create pages home
```bash
rails g controller pages home
```

## Create scaffold Category
```bash
rails g scaffold Category name:rich_text
```
## Create scaffold Product
```bash
rails g scaffold Product name:string price:integer image description:rich_text category:references
```
## Create scaffold Order
```bash
rails g scaffold Order total:integer status:string payment_method:string note:rich_text user:references
```

## Create scaffold OrderProduct
```bash
rails g scaffold OrderProduct price:integer amount:integer order:references product:references
```

## Setup gem will_paginate
```bash
bundle add will_paginate
bundle add will_paginate-bootstrap-style
```

## Create seeds
```rb
admin = User.create(first_name: 'Nguyen', last_name: 'Son', email: 'son@example.com', password: 'Son@2023', password_confirmation: 'Son@2023', isadmin: true)
```
**Run seed**
```bash
rails db:seed
```

