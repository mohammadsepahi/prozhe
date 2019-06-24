import 'dart:io';

import 'package:prozhe/Api.dart';
import 'package:prozhe/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new libraryapp());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("لیست کتاب ها"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("درباره ما"),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("خروج"),
              onTap: () => exit(0),
            ),
          ],
        ),
      ),
      body: Api(),
    );
  }
}