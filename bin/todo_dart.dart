import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

import '../lib/todo_repo.dart';
import '../lib/todo.dart';

void main(List<String> arguments) async {
  final Router app = Router();

  app.get('/todos', (Request request) {
    final List<Todo> todoList = TodoRepository.instance.fetch();
    final List<Map<String, dynamic>> data =
        todoList.map((e) => e.toJson()).toList();

    return Response.ok(json.encode(data));
  });

  app.post('/todo', (Request request) async {
    final String payload = await request.readAsString();
    final Todo todo = Todo.fromJson(json.decode(payload));

    TodoRepository.instance.add(todo);
    return Response(201);
  });

  await shelf_io.serve(app, 'localhost', 8080);
}
