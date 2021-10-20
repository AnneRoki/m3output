import 'package:flutter/material.dart';
import 'package:m3output/loginScreen.dart';
import 'package:m3output/compose.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

@override
class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    navigatetopush();
  }

  navigatetopush() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
          child: Image.asset(
        'pics/Pekoha.png',
        height: 400,
        width: 400,
        color: Colors.pink[50],
        colorBlendMode: BlendMode.darken,
        fit: BoxFit.fitWidth,
      )),
    );
  }
}
//Tyrael