import 'package:flutter/material.dart';
import 'file:///C:/Users/alexa/AndroidStudioProjects/todoey_flutter/lib/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.lightBlueAccent,
          ),
        ),
        initialRoute: '/',
        routes: {
      '/': (context) => TasksScreen(),
    });
  }
}
