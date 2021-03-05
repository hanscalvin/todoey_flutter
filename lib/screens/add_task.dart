import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {

  final Function taskCallback;
  AddTaskScreen(this.taskCallback);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(15.0),topLeft: Radius.circular(15.0)),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 24,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value){
              newTaskTitle = value;
            },
          ),
          TextButton(
            onPressed:(){
              taskCallback(newTaskTitle);
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.lightBlueAccent),
            ),
            child: Text('Add',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
