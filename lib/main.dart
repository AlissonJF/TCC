import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TCC',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
