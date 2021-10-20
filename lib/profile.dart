import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Profile(),
      theme: new ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Container(
            height: 80,
            width: 600,
            decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Icon(
                  Icons.account_circle_rounded,
                  size: 80.0,
                  ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 110,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Juan Dela Cruz' + '\n@JuanDC' +
                '\n\nFollowers: 1500       Following: 450',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}