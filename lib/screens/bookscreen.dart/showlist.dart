import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/screens/bookscreen.dart/Ebooks.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: const [
      ListTile(
        title: Text(
          "Books Collection",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
      SizedBox(height: 200, child: Ebooks()),
    ])));
  }
}
