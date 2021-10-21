import 'package:flutter/material.dart';
import 'profile.dart';
import 'dashboard.dart';

class Compose extends StatefulWidget {
  const Compose({Key? key}) : super(key: key);

  @override
  _ComposeState createState() => _ComposeState();
}

class _ComposeState extends State<Compose> {
  navigatetopushdash() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => dashBoard()));
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple[100], actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      navigatetopushdash();
                    },
                    color: Colors.purple[300],
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                Padding(padding: EdgeInsets.only(right: 87.0)),
                Image.asset(
                  'pics/Konpeko.png',
                  fit: BoxFit.contain,
                  color: Colors.purple[100],
                  colorBlendMode: BlendMode.darken,
                  height: 50,
                  width: 50,
                ),
                Padding(padding: EdgeInsets.only(right: 82.0)),
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
        backgroundColor: Colors.pink[50],
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: TextFormField(
                maxLength: 240,
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "Enter your message here",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ))),
          )
        ])));
  }
}



//Tyrael