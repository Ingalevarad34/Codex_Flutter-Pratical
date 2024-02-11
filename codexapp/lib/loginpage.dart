import 'package:codexapp/codexapp.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg6.jpeg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            height: 470,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: const BorderRadius.all(Radius.elliptical(30, 30)),
              color: const Color.fromARGB(58, 0, 0, 0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Container(
                          width: 200,
                          height: 100,
                          child: Image.asset('images/applogo1.png')),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          hintText: 'Enter valid Username'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter secure password'),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CodeXapp()));
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
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
