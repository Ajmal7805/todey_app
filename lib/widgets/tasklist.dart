import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_app/modals/taskdata.dart';
import 'package:todey_app/widgets/tasktile.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          

          itemBuilder: (context, index) {
            final task=taskdata.tasklists[index];
            return TaskTile(
              onlongpress: (){
                taskdata.deletetask(task);
              },
              ischecked: task.isdones,
              taskname: task.name,
              checkboxcallback: (bool? value) {
                taskdata.updatetask(task);
              },
            );
          },
          itemCount: taskdata.taskcount,
        );
      },
    );
  }
}
