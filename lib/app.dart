import 'package:flutter/material.dart';
import 'package:instagram_nikollas/pages/home_page.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InstaAula',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink
        ),
        useMaterial3: true
      ),
      home: const HomePage()
      
    );
  }
}
