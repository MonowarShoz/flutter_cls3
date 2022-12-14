import 'package:flutter/material.dart';
import 'package:flutter_cls3/auth_screen.dart';
import 'package:flutter_cls3/home_page.dart';
import 'package:flutter_cls3/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ThirdPage(),
    );
  }
}
