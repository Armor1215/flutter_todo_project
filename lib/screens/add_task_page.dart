import 'package:flutter/material.dart';
import 'package:flutter_todo_project/widget/rounded_button.dart';


class AddTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {},
          ),
          const SizedBox(
            height: 20.0,
          ),
          RoundedButton(
            title: 'Add',
            onTap: () {
              Navigator.pop(context);
          },
          ),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}