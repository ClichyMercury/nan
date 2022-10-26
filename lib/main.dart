import 'package:flutter/material.dart';
import 'package:nan/views/ShowConnexion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NaN Digital Academy',
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
      home: const ShowConnexion(),
    );
  }
}
