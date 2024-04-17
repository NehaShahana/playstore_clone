import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/models/game.dart';

class Foreyou extends StatefulWidget {
  const Foreyou({super.key});

  @override
  State<Foreyou> createState() => _ForeyouState();
}

class _ForeyouState extends State<Foreyou> {
  List<Gameforyoumodel> imgList = [
    Gameforyoumodel(
        imageurl:
            "https://img.freepik.com/free-photo/view-3d-video-game-controller_23-2151005775.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        maintitle:
            "Easy &Fun PAW Patrol kids game-preschool & Toddler children....",
        caption: "new update available.update available",
        subimg:
            "https://img.freepik.com/free-vector/video-game-elements-collection_23-2150269111.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        subcaption: "Paw petrol"),
    Gameforyoumodel(
        imageurl:
            "https://st3.depositphotos.com/13194036/37187/i/450/depositphotos_371874436-stock-photo-kyiv-ukraine-june-2019-professional.jpg",
        maintitle: "FOOTBALL GAME",
        caption: "New update available.Update available",
        subimg:
            "https://img.freepik.com/free-vector/video-game-elements-collection_23-2150269111.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        subcaption: "Raw petro...")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 300,
            viewportFraction: 1,
          ),
          items: imgList
              .map((item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(item.imageurl),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Trending",
                              style: TextStyle(
                                  backgroundColor:
                                      Color.fromARGB(255, 212, 208, 208))),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item.maintitle,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 19, 16, 16),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(item.caption),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Row(
                                children: [
                                  Image.network(
                                    width: 30,
                                    item.subimg,
                                  ),
                                  Text(item.subcaption),
                                ],
                              ),

                              // title: Text(item.subcaption)

                              //   title: Center(child: Text(item.maintitle)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
