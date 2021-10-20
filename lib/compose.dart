import 'package:flutter/material.dart';

void main() => runApp(const compose());

class compose extends StatelessWidget {
  const compose({Key? key}) : super(key: key);

  static const String _title = 'Compose';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent, actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              TextButton(
                style: style,
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 120)),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                color: Colors.purple[300],
                child: Text(
                  'Post',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.black,
          height: 10,
        ),
      ]),
    );
  }
}

//Tyrael