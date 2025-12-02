import 'package:flutter/material.dart';
import 'package:todey_app/widgets/tasktile.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [TaskTile(), TaskTile(), TaskTile(),]);
  }
}
