import 'package:meta/meta.dart';

@immutable
class Todo {
  const Todo({
    required this.id,
    required this.value,
    required this.isChecked,
  });

  final int id;
  final String value;
  final bool isChecked;

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        value = json['value'],
        isChecked = json['is_checked'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'is_checked': isChecked,
      };
}
