# Simple TODO API in Dart

A very simple TODO API in [Dart](https://dart.dev) based on the [shelf](https://pub.dev/packages/shelf) package. 

This project is ment to demonstrate how to create a simple REST API using [Dart](https://dart.dev).

## Download dependencies

As mentioned this project depends on the [shelf](https://pub.dev/packages/shelf) package. To download the package and make it available to the project run:

```shell
dart pub get
```

## Compile and run

Assuming the Dart SDK installed (instructions can be found [here](https://dart.dev/tutorials/server/get-started#2-install-dart)) compiling the SDK can be done using the following command from the root of the project:

```shell
dart compile exe bin/todo_dart
```

This will create a self-contained executable which can be executed by running to following command from the root of the project:

```shell
./bin/todo_dart.exe
```

## Run a debug build

To run a debug build run the following command from the root of the project:

```shell
dart run bin/todo_dart.dart
```

## Testing the API

If the server is running it will start listening on `localhost` at port `8080`. To fetch a list of TODO items from the API using `curl` run:

```shell
curl http://localhost:8080/todos
```

To add an item to the TODO list using `curl` run:

```shell
curl -X 'POST' \
  'http://localhost:8080/todo' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "id": 2,
  "is_checked": true,
  "value": "Put ice-cream in the freezer"
}'
```

