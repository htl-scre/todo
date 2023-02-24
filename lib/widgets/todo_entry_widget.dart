import 'package:flutter/material.dart';

import '../domain/todo_entry.dart';

class TodoEntryWidget extends StatefulWidget {
  TodoEntryWidget(this.todo, {super.key});

  final TodoEntry todo;

  @override
  State<TodoEntryWidget> createState() => _TodoEntryWidgetState();
}

class _TodoEntryWidgetState extends State<TodoEntryWidget> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.todo.description),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                  child: IconButton(
                onPressed: () {
                  setState(() => widget.todo.done = !widget.todo.done);
                },
                icon: Icon(widget.todo.done
                    ? Icons.check_circle_outline
                    : Icons.circle_outlined),
              )),
              SizedBox(width: 16),
              Text(widget.todo.description),
            ],
          ),
        ),
      ),
    );
  }
}
