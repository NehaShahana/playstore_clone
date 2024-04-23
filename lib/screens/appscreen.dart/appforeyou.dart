import 'package:flutter/material.dart';
import 'package:playstore_application/widgets/app.dart/Suggested.dart';
import 'package:playstore_application/widgets/app.dart/carouserapp.dart';
import 'package:playstore_application/widgets/app.dart/foreyouscreenapp.dart';

class appscreen extends StatefulWidget {
  const appscreen({super.key});

  @override
  State<appscreen> createState() => _appscreenState();
}

class _appscreenState extends State<appscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      const ListTile(
        title: Text(
          "Dating apps",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
      SizedBox(
        height: 200,
        child: foreapp(),
      ),
      SizedBox(
        height: 400,
        child: Suggapp(),
      ),
      const SizedBox(
        height: 300,
        child: Carouser(),
      ),
    ])));
  }
}
