import 'package:flutter/material.dart';
import 'package:flutter_todo_project/model/item_data.dart';
import 'package:flutter_todo_project/screens/add_task_page.dart';
import 'package:flutter_todo_project/widget/bottom_button.dart';
import 'package:flutter_todo_project/widget/row_widget.dart';
import 'package:flutter_todo_project/screens/detail_screen.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var todoItems = ['Dart', 'Kotlin', 'Java', 'JavaScript'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ToDo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBodyContent(),
            _buildBottomBar(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyContent() {
    List<ItemData> items = [
      ItemData(
        isChecked: true,
        image: 'assets/images/dart_image.jpeg',
        title: 'Dart',
      ),
      ItemData(
        isChecked: true,
        image: 'assets/images/kotlin_image.jpg',
        title: 'Kotlin',
      ),
      ItemData(
        isChecked: true,
        image: 'assets/images/java_image.png',
        title: 'Java',
      ),
      ItemData(
        isChecked: true,
        image: 'assets/images/javascript_image.jpg',
        title: 'JavaScript',
      ),
    ];

    return Container(
      width: double.infinity,
      height: 560,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      itemData: items[index],
                    ),
                  ),
                );

                debugPrint('$result');
              },
              child: ListTile(
                title: ToDoRow(
                  title: items[index].title,
                ),
              ),
            );
          }),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return BottomButtom(
        title: 'Add item',
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Container(
                height: 220.0,
                color: Color(0xff757575),
                child: AddTaskPage(),
              );
            },
          );
        }
    );
  }
}