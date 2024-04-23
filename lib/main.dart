import 'package:flutter/material.dart';
import 'package:playstore_application/screens/home_screen.dart';
import 'package:playstore_application/widgets/offerwid.dart/offegame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "playstore",
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    );
  }
}
