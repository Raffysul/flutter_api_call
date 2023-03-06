import 'package:flutter/material.dart';
import 'package:flutter_api_call/services/todo_services.dart';
import '../model/todo.dart';

class TodoProvider extends ChangeNotifier{
  final _service = TodoService();
  bool isLoading = false;
  List <Todo> _todos = [];
  List <Todo> get todos => _todos;

  Future <void> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();

    _todos = response;
    isLoading = false;
    notifyListeners();
  }
}