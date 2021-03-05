import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';

//list of task names and complete state

class TaskList extends StatefulWidget {

  final List<Task> tasks;
  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();

}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskName: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (bool checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      );
    }, itemCount: widget.tasks.length,
    );
  }

  // void addTasks(String newTask){
  //   //this is the function to add task inside the tasklist state class
  //   setState(() {
  //
  //   if(newTask!=null) {
  //     tasks.add(Task(name: newTask));
  //     //TODO need to figure out how to interact with addtask or task-screen
  //   }
  //   });
  // }
}
