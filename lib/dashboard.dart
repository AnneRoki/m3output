import 'package:flutter/material.dart';
import 'package:m3output/profile.dart';
import 'var.dart';
import 'compose.dart';
import 'profile.dart';

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
  late GlobalKey<RefreshIndicatorState> refreshKey;
  final List<String> lposts = <String>['testing'];
  TextEditingController newpost = TextEditingController();
  Future<Null> refreshpage() async {
    await Future.delayed(Duration(seconds: 2));
    addItemToList();
    return null;
  }

  @override
  void initState() {
    super.initState();
    refreshKey = GlobalKey<RefreshIndicatorState>();
  }

  void addItemToList() {
    setState(() {
      lposts.insert(0, temp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text('Pekobit'),
        actions: <Widget>[
          Image.asset(
            'pics/Peko.png',
            fit: BoxFit.contain,
            color: Colors.purple[100],
            colorBlendMode: BlendMode.darken,
            height: 50,
            width: 50,
          ),
          Padding(padding: EdgeInsets.only(right: 135.0)),
          IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                navigatetoprofile();
              }),
        ],
      ),
      backgroundColor: Colors.pink[50],
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              key: refreshKey,
              onRefresh: () async {
                await refreshpage();
              },
              child: ListView.builder(
                  itemCount: lposts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 200,
                        margin: EdgeInsets.all(15),
                        color: Colors.purple[300],
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('${lposts[index]}',
                              style: TextStyle(fontSize: 15)),
                        ));
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatetocompose();
        },
        child: Icon(Icons.message_outlined),
      ),
    );
  }

  navigatetocompose() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Compose()));
  }

  navigatetoprofile() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (conext) => Profile()));
  }
}
