import 'package:flutter/material.dart';
import 'package:flutter_todo_project/domain/model/models.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.itemData}) : super(key: key);

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context, itemData.title);
          },
          child: Column(
            children: [
              Hero(
                tag: itemData.id,
                child: Image.network(
                  itemData.image,
                  width: double.infinity,
                  height: 350,
                ),
              ),
              Center(
                child: Text(itemData.title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

