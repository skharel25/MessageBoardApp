import 'package:flutter/material.dart';
import 'package:messageboard/ExServices/auth.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  final AuthenticationService auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[500],
      appBar: AppBar(title: Text('Welcome to the message board!')),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      body: TextButton.icon(
        label: Text('Sign Out'),
        icon: Icon(Icons.person),
        onPressed: () async {
          await auth.signOut();
        },
      ),
    );
  }
}
