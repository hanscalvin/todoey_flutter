import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  final String taskName;
  TaskTile({this.taskName});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;

  void taskboxCallback(bool checkboxState){
    setState(() {
        isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskName,
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null ),
      ),
      trailing: Taskbox(checkboxState: isChecked, checkboxFunction: taskboxCallback),
    );
  }
}


class Taskbox extends StatelessWidget {

  final bool checkboxState;
  final Function checkboxFunction;
  Taskbox({this.checkboxState, this.checkboxFunction});

  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
        onChanged: checkboxFunction,
    );
  }
}
