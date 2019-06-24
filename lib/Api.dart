import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  var data;
  Future<List> GetData() async {
    http.Response response = await http.get(
      Uri.encodeFull('https://api.myjson.com/bins/jb58f'),
      headers: {"Accept": "Application/json"},
    );
    this.setState(() {
      data = json.decode(response.body);
    });
    print(response.statusCode);
  }

  @override
  void initState() {
    this.GetData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        var bookname = data[index]['bookname'];
        var bookurl = data[index]['bookurl'];
        return Padding(
          padding: EdgeInsets.all(0),
          child: Card(
            elevation: 1.0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(1.5),
                              child: Icon(
                                Icons.book,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(1.5),
                              child: Text(bookname,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Arial",
                              ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(Icons.link),
                        iconSize: 30,
                        onPressed: () async {
                          UrlLauncher.launch(bookurl);
                        }),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
