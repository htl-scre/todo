import 'package:flutter/material.dart';
import 'package:todo/domain/todo_entry.dart';
import 'package:todo/widgets/todo_entry_widget.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.todos,
  });

  final List<TodoEntry> todos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: todos.isEmpty
          ? Center(child: Text('Nothing to do'))
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (_, index) => TodoEntryWidget(todos[index]),
            ),
    );
  }
}
