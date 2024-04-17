import 'package:flutter/material.dart';

import 'package:playstore_application/screens/Foreyou.dart';
import 'package:playstore_application/screens/Topcharts.dart';
import 'package:playstore_application/screens/categories.dart';
import 'package:playstore_application/screens/kids.dart';

class apps extends StatefulWidget {
  const apps({super.key});

  @override
  State<apps> createState() => _appsState();
}

class _appsState extends State<apps> {
  List<Widget> screen = [
    const Foreyou(),
    const topchart(),
    const kids(),
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
              Tab(text: "Categories"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Foreyou(),
            topchart(),
            kids(),
            categories(),
          ],
        ),
      ),
    );
  }
}
