import 'package:flutter/material.dart';
import 'package:todo_list/model/todo.dart';

class NewTodoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    return AlertDialog(
      title: Text('New todo'),
      content: TextField(
        controller: textEditingController,
        autofocus: true,
        autocorrect: true,
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            final todo = new Todo(title: textEditingController.value.text);
            textEditingController.clear();
            Navigator.of(context).pop(todo);
          },
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.red.shade900,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: TextStyle(
              color: Colors.red.shade900,
            ),
          ),
        ),
      ],
    );
  }
}
