import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Text _buildText() {
      return Text(
        'صفحه ورود',
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'tahoma',
        ),
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0),
              TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person),
                  labelText: 'نام کاربری',
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.vpn_key),
                  labelText: 'کلمه عبور',
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20.0),
              FlatButton(
                color: Colors.red,
                child: Text("ورود",
                style: TextStyle(fontSize: 20),
                ),
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}