import 'package:flutter/material.dart';
import 'package:flutter_todo_project/domain/model/models.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.itemData}) : super(key: key);

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(itemData.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(itemData.image),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}

