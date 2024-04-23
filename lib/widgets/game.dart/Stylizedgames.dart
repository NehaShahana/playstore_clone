import 'package:flutter/material.dart';
import 'package:playstore_application/models/stylizedgame.dart';

class stylegame extends StatelessWidget {
  stylegame({super.key});

  List<stylizedModel> gamelist = [
    stylizedModel(
        imageurl:
            "https://img.freepik.com/free-vector/gradient-opening-videogame-background_23-2149532879.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        subimg:
            "https://img.freepik.com/premium-photo/game-level-background-with-platforms-items_1037171-19818.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        submtitle: "Candy guirl",
        subtitle: "Action.gmae ",
        startile: "4.1 ★  107 MB"),
    stylizedModel(
        imageurl:
            "https://play-lh.googleusercontent.com/je9TJ0GI8JxpTAdLjoz3NFLg0nmNpAfqnkFU2Rvpu6UBbugvdw3xZyuBkqPi9JItN_I=s128-rw",
        subimg:
            "https://play-lh.googleusercontent.com/HWVNuIGO3NfdVBCmw_rQGTfINA7pdoedynIZbC8TcoNKvd-aAkzk7XboE0zDZE0_CF8=s128-rw",
        submtitle: "Mini military",
        subtitle: "Hunting,game ",
        startile: "4.1 ★  107 MB"),
    stylizedModel(
        imageurl:
            "https://play-lh.googleusercontent.com/DX-6kz2wCN7zNTOn-G4zTyb2BkZFRaqT1BAZT1kaX-J6ABWjHm4iVD9to9O1JZXf3e5k=s128-rw",
        subimg:
            "https://play-lh.googleusercontent.com/HWVNuIGO3NfdVBCmw_rQGTfINA7pdoedynIZbC8TcoNKvd-aAkzk7XboE0zDZE0_CF8=s128-rw",
        submtitle: "Fire man",
        subtitle: "Action.Firing ",
        startile: "4.1 ★  107 MB"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        //shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 400,
              width: 300,
              child: Column(
                children: [
                  Container(
                      height: 200,
                      // width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(gamelist[index].imageurl)),
                      )),
                  ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: NetworkImage(
                              gamelist[index].subimg,
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    title: Text(gamelist[index].submtitle),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(gamelist[index].subtitle),
                        Text(gamelist[index].startile)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: gamelist.length,
      ),
    ));
  }
}
