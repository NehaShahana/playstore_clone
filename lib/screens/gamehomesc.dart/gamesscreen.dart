import 'package:flutter/material.dart';
import 'package:playstore_application/screens/gamehomesc.dart/foryouscreen.dart';
import 'package:playstore_application/widgets/game.dart/CarouseSlider.dart';
import 'package:playstore_application/screens/gamehomesc.dart/Topcharts.dart';
import 'package:playstore_application/screens/gamehomesc.dart/categories.dart';
import 'package:playstore_application/screens/gamehomesc.dart/kids.dart';
import 'package:playstore_application/screens/gamehomesc.dart/premium.dart';

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
        body: TabBarView(
          children: [
            foreyoyscreen(),
            const topchart(),
            const kids(),
            const premium(),
            const categories(),
          ],
        ),
      ),
    );
  }
}
