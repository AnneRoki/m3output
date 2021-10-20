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
        leading: Icon(Icons.account_circle),
      ),
      backgroundColor: Colors.orange[100],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Container(
            height: 120,
            width: 600,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Juan Dela Cruz' + '\n@Juandc'+
                '\n\nFollowers: 1500    Following: 450',
                style: TextStyle(fontSize: 21, color: Colors.black),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 50,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Linked Accounts:',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 100,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Facebook: Juan Dela Cruz'+
                '\n\nInstagram: juandc',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}