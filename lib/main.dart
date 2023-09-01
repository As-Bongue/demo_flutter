import 'package:flutter/material.dart';

import 'pages/home/home.dart';
import 'pages/users/users.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      routes: {
        "/":(context) => HomePage(),
        "/users":(context) => UsersPage()
      },
      initialRoute: "/users",
    );
  }
}