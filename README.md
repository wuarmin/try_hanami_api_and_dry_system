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
Run the following commands to prepare your Airports API Test Environment:
```sh
$ docker-compose build
$ docker-compose run test_runner ./bin/setup
```
Run test suite
WIP
