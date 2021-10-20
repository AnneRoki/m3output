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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Rabbit'),
      ),
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Container(
            height: 190,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 190,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 275.0, top: 150),
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
        ]),
      ),
    );
  }
}
