import 'package:flutter/material.dart';
import 'package:prozhe/ui/screens/aboutus.dart';
import 'package:prozhe/ui/screens/login.dart';
import 'package:prozhe/ui/screens/home.dart';

class libraryapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'کتابخونه',
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/about' : (context) => AboutUs(),
      },
    );
  }
}