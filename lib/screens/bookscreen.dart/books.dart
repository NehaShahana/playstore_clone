import 'package:flutter/material.dart';
import 'package:playstore_application/screens/bookscreen.dart/Audio.dart';
import 'package:playstore_application/screens/bookscreen.dart/Ebooks.dart';
import 'package:playstore_application/screens/bookscreen.dart/Geners.dart';
import 'package:playstore_application/screens/bookscreen.dart/comic.dart';
import 'package:playstore_application/screens/bookscreen.dart/top.dart';

class books extends StatefulWidget {
  const books({super.key});

  @override
  State<books> createState() => _booksState();
}

class _booksState extends State<books> {
  List<Widget> screen = [
    const Ebooks(),
    const Audio(),
    const comic(),
    const Geners(),
    const top()
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
              Tab(text: "Ebooks"),
              Tab(text: "Audio books"),
              Tab(text: "Comics"),
              Tab(text: "Geners"),
              Tab(text: "Topselling"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            books(),
            Audio(),
            comic(),
            Geners(),
            top(),
          ],
        ),
      ),
    );
  }
}
