import 'package:flutter/material.dart';
import 'task_tile.dart';

List<Widget> children = [];
String task;

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();

  void addChildren(String taskName){
    task = taskName;
  }
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
          top: 50.0, left: 40.0, right: 40.0, bottom: 60.0),
      children: children,

    );
  }

  void addChildren() {
    children.add(
       TaskTile(taskName: task)
    );
  }
}

