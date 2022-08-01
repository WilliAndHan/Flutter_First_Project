import 'package:flutter/material.dart';
import 'package:hello_world/FormRegistration.dart';
import 'package:hello_world/PerhitunganBangunDatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormRegistration(),
    );
  }
}
