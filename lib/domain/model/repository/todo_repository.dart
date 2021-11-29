import 'package:flutter/cupertino.dart';
import 'package:flutter_todo_project/data/store/firebase_store.dart';

class TodoRepository extends ChangeNotifier {
  final FirebaseStore firebaseStore;

  TodoRepository({required this.firebaseStore});

  getTodosStream() => firebaseStore.getTodosStream();

  void addTodo(String title) {
    firebaseStore.addTodo(title);
  }

  void updateTodo(String id, bool isChecked) {
    firebaseStore.updateTodo(id, isChecked);
  }
}