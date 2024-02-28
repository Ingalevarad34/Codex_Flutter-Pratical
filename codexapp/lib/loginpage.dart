import 'package:codexapp/codexapp.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  Future check() {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Invalid email address or wrong password"),
        content: const Text("Press Okay to retry"),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: const Text("okay"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg6.jpeg"), fit: BoxFit.fill)),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(97, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(20)),
              child: BlurryContainer(
                height: 498,
                width: 300,
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                          width: 200,
                          height: 100,
                          child: Image.asset('images/applogo1.png')),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        initialValue: '',
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Username',
                          hintText: 'Enter valid Email Address',
                        ),
                        onChanged: (value) {
                          username = value;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        initialValue: '',
                        obscureText: true,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Password',
                          hintText: 'Enter your secure password',
                        ),
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              right: 15, top: 10, bottom: 10),
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(30, 30)),
                        color: Colors.white,
                      ),
                      child: OutlinedButton(
                        onPressed: () {
                          username == "ingalevarad34@gmail.com" &&
                                  password == "varad@34"
                              ? Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CodeXapp(),
                                  ),
                                )
                              : check();
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset("images/google.png"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          height: 50,
                          width: 50,
                          child: Image.asset("images/apple.png"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
