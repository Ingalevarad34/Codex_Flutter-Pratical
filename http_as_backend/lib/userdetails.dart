import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  Map userProfile;
  UserDetails({super.key, required this.userProfile});

  @override
  State<UserDetails> createState() => _UserDetailsState(userProfile);
}

class _UserDetailsState extends State<UserDetails> {
  Map userProfile;
  _UserDetailsState(this.userProfile);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.network(
                                "https://www.shutterstock.com/image-vector/vector-illustration-man-business-suit-260nw-72009277.jpg"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("UserNamae: ${userProfile['username']}"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("Email: ${userProfile['email']}"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Address: ${userProfile['address']['street']}"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("Suite: ${userProfile['address']['suite']}"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("City: ${userProfile['address']['city']}"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "ZipCode: ${userProfile['address']['zipcode']}")
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
