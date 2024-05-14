import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/login_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir', useMaterial3: true),
      home: LoginScreen(),
    );
  }
}
