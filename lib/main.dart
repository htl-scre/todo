import 'package:flutter/material.dart';
import 'package:todo/domain/todo_entry.dart';
import 'package:todo/widgets/todo_list.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatelessWidget {
  TodoListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todos = <TodoEntry>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showInput(context),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        leading: Image.asset('assets/images/HTL_IF.jpg'),
        title: Text('My todos'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0), child: TodoList(todos: todos)),
    );
  }

  _showInput(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            TextField(
              onSubmitted: (value) {
                var todo = TodoEntry(value);
                setState(() {
                  todos.add(todo);
                });
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
