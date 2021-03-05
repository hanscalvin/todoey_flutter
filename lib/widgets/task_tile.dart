import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskName;
  final Function checkboxCallback;

  TaskTile({this.isChecked,this.taskName,this.checkboxCallback});

  // void taskboxCallback


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
      style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}



