import 'package:flutter/material.dart';
import 'package:flutter_application_15/logic.dart';
import 'package:flutter_application_15/todo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) => TodoProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    ),
    
    );
  }
}
