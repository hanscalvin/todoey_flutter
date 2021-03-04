import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'package:todoey_flutter/widgets/add_task.dart';
import 'package:todoey_flutter/constant.dart';

TaskList tasks = TaskList();

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 45.0,
                      color: Colors.lightBlueAccent,
                    ),
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '12 Tasks Left',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)),
              child: tasks,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () async {
          //bottom widget
          var typedTask = await showModalBottomSheet(context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom), //to make the modal just right above the keybaord
                          child: AddTaskScreen()
                      )
                  )
              ),
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
          );
          //TO DO store the typed into the tasklist... somehow
        },
      ),
    );
  }


}
