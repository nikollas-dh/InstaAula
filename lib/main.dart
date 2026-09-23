import 'package:flutter/material.dart';
import 'package:instagram_nikollas/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Nikollas',
      home: const LoginPage(),
    );
  }
}