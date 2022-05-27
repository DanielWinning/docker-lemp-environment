# Docker Environment

Setting up a basic Docker environment for PHP development. For learning.

- nginx
- php
- mysql
- composer

The `dc` file is just used as a shortcut to run composer commands, if you have PHP installed on your system. Otherwise
just use the usual command. It's a shortcut for:

```
docker-compose run --rm composer <command>
```

```
./dc init
./dc update
./dc my-custom-cli-script
./dc create-project laravel/laravel
```