import 'package:flutter/material.dart';

class TodoEntryWidget extends StatelessWidget {
  TodoEntryWidget(this.todo, {super.key});

  final String todo;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => {
        
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(child: Icon(Icons.check)),
              SizedBox(width: 16),
              Text(todo),
            ],
          ),
        ),
        elevation: 5,
      ),
    );
  }
}
