import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    this.ischecked,
    this.taskname,
    this.checkboxcallback,  required this.onlongpress,
  });

  final bool? ischecked;
  final String? taskname;
  final Function? checkboxcallback;
  final GestureLongPressCallback onlongpress;

  @override
  Widget build(BuildContext context) {
    return
     ListTile(
      onLongPress: onlongpress,
      title: Text(
        taskname!,
        style: TextStyle(
          decoration: ischecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: (value) {
          checkboxcallback?.call(value);
        },
      ),
    );
  }
}
