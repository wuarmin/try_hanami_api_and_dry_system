# Example API

### Development
Run the following commands to prepare your API Development Environment:
```sh
$ docker-compose build
$ docker-compose run runner ./bin/setup.rb
```
Start the API
```sh
$ docker-compose up --build api
```

### Testing
Run the following commands to prepare your Example API Test Environment:
```sh
$ docker-compose build
$ docker-compose run test_runner ./bin/setup.rb
```
Run test suite
```sh
$ docker-compose run test_runner bundle exec rspec spec
```
