import 'package:flutter/material.dart';
import 'package:m3output/dashboard.dart';
import 'package:m3output/splash.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  navigatetopushdash() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => dashBoard()));
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text(
          'Pekobit',
        ),
      ),
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'pics/Peko.png',
                  height: 200,
                  width: 200,
                  color: Colors.pink[50],
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('You have forgotten the password!');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if (nameController.text == 'admin' &&
                          passwordController.text == 'admin') {
                        navigatetopushdash();
                      } else {
                        final snackBar = SnackBar(
                          content: const Text(
                              'Invalid username/password. Try Again!'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    color: Colors.purple[300],
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Tyrael