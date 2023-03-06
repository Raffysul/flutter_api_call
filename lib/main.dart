import 'package:flutter/material.dart';
import 'package:flutter_api_call/provider/todo_provider.dart';
import 'package:provider/provider.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: HomePage(),
      ),
    );
  }
}
