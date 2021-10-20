import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new dashBoard(),
      theme: new ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class dashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new dashBoardState();
  }
}

class dashBoardState extends State<dashBoard> {
  get floatingActionButton => null;

  final List<String> _posts = <String>['1st', '2nd', '3rd'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Rabbit'),
        ),
        backgroundColor: Colors.pink[50],
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 200,
                          margin: EdgeInsets.all(5),
                          color: Colors.orange[200],
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('${_posts[index]}',
                                style: TextStyle(fontSize: 15)),
                          ));
                    }))
          ],
        ));
  }
}
