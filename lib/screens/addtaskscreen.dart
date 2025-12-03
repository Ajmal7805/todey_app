import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_app/modals/taskdata.dart';

class Addtaskscreen extends StatelessWidget {
  const Addtaskscreen({super.key, });

  @override
  Widget build(BuildContext context) {
    String? newtasktitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newtasktitle = value;
              },
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                Provider.of<Taskdata>(
                  context,
                  listen: false,
                ).addtask(newtasktitle.toString());
                Navigator.pop(context);
              },
              height: 50,
              minWidth: double.infinity,
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
