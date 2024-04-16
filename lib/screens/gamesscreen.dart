import 'package:flutter/material.dart';
import 'package:playstore_application/screens/Foreyou.dart';
import 'package:playstore_application/screens/Topcharts.dart';
import 'package:playstore_application/screens/categories.dart';
import 'package:playstore_application/screens/kids.dart';
import 'package:playstore_application/screens/premium.dart';

class gamesscreen extends StatefulWidget {
  const gamesscreen({super.key});

  @override
  State<gamesscreen> createState() => _gamesscreenState();
}

class _gamesscreenState extends State<gamesscreen> {
  List<Widget> screen = [
    const Foreyou(),
    const topchart(),
    const kids(),
    const premium(),
    const categories(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: "Fore you"),
              Tab(text: "Top charts"),
              Tab(text: "Kids"),
              Tab(text: "Premium"),
              Tab(text: "Categories"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Foreyou(),
            topchart(),
            kids(),
            premium(),
            categories(),
          ],
        ),
      ),
    );
  }
}
