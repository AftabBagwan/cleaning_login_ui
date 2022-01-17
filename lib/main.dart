import 'package:cleaning_login_ui/login/login_page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage1(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.deepPurple,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
