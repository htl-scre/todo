import 'package:flutter/material.dart';
import 'package:todo/domain/todo_entry.dart';
import 'package:todo/widgets/todo_entry_widget.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatelessWidget {
  TodoListApp({Key? key}) : super(key: key);
  var todos = ['waschen', 'duschen', 'schlafen'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/images/HTL_IF.jpg'),
          title: Text('My todos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: todos.isEmpty
              ? Center(child: Text('Nothing to do'))
              : ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (_, index) => TodoEntryWidget(todos[index]),
                ),
        ),
      ),
    );
  }
}
