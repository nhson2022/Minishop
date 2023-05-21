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

