import 'todo.dart';

class TodoRepository {
  static TodoRepository? _instance;

  static TodoRepository get instance {
    return _instance ??= TodoRepository._();
  }

  TodoRepository._()
      : todoList = <Todo>[
          Todo(
            id: 1,
            value: 'Remember to buy groceries',
            isChecked: false,
          ),
        ];

  final List<Todo> todoList;

  List<Todo> fetch() {
    return todoList;
  }

  void add(Todo todo) {
    todoList.add(todo);
  }
}
