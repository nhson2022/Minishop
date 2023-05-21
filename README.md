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


