import 'package:flutter/material.dart';

import 'package:playstore_application/screens/apps.dart';
import 'package:playstore_application/screens/books.dart';

import 'package:playstore_application/screens/gamesscreen.dart';

import 'package:playstore_application/screens/offer.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int selectedindex = 0;
  List<Widget> screen = [
    const gamesscreen(),
    const apps(),
    const offer(),
    const books(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
                labelText: 'Search apps&....',
                // hintStyle: TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    borderSide: BorderSide.none),
                // icon: (Icon(Icons.abc)),

                fillColor: Color.fromARGB(255, 213, 224, 233),
                filled: true,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic)),
          ),
          actions: [
            IconButton(
              icon: const Badge(
                backgroundColor: Colors.blue,
                label: Text('5'),
                child: Icon(Icons.notifications_none_outlined),
              ),
              onPressed: () {},
            ),
            IconButton(
                onPressed: () {},
                icon: Image.network(
                    "https://img.freepik.com/premium-vector/portrait-beautiful-women-round-frame-avatar-female-character-isolated-white-background_559729-216.jpg"))
          ],
        ),
        body: screen[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          currentIndex: selectedindex,
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.games_outlined,
                ),
                label: "Games"),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: "Apps"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined), label: "Offers"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined), label: "Books"),
          ],
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
        ));
  }
}
