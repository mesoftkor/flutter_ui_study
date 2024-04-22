import 'package:flutter/material.dart';
import 'package:flutter_ui_study/mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: const TextTheme(
            bodyText2: TextStyle(fontSize: 30, color: Colors.white),
          )),
      home: MyPage(),
    );
  }
}
