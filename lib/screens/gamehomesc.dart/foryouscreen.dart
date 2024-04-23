// ignore_for_file: sized_box_for_whitesp

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:playstore_application/widgets/game.dart/CarouseSlider.dart';
import 'package:playstore_application/widgets/game.dart/Stylizedgames.dart';
import 'package:playstore_application/widgets/game.dart/recommended.dart';
import 'package:playstore_application/widgets/game.dart/suggession.dart';

class foreyoyscreen extends StatelessWidget {
  foreyoyscreen({super.key});
  // List<SuggesionModel> gamelist = [
  //   SuggesionModel(
  //       logo:
  //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9Po7xkBYcWEK89tRLTsggicUYzetv7r4mw&s",
  //       maintitle: "Subway Princess Runner",
  //       subtitle: "Action .Runner",
  //       starTitle: "4.0 ★",
  //       logo2:
  //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF1Dd4SaeQd2voz7aklnwav0PzyBAzUzRFMw&s",
  //       maintitle2: "UNO!",
  //       subtitle2: "Card .last",
  //       startitle2: "4.5  ★",
  //       logo3:
  //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5rvbYM5kONQMbPl4TOOsIrWANV-j2WTtkw&s",
  //       maintitl3: "8 ball pool",
  //       subtitle3: "hi",
  //       startitle3: "4.5  ★")
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          const SizedBox(
            height: 300,
            child: Foreyou(),
          ),

          // ignore: sized_box_for_whitespace
          Container(
            height: 320,
            // width: 600,
            child: const sugession(),
          ),
          const SizedBox(
            height: 320,
            child: Recommented(),
          ),
          const ListTile(
            title: Text(
              "Stylish games",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),

          SizedBox(
            height: 400,
            child: stylegame(),
          )
        ],
      ),
    ));
  }
}
