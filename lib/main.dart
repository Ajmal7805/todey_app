import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_app/modals/taskdata.dart';
import 'package:todey_app/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Taskdata>(
      create: (context) => Taskdata(),
      child: MaterialApp(
        title: 'Flutter Demo',
        
        home: const TaskScreen()
      ),
    );
  }
}


