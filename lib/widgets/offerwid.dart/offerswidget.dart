// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/models/game.dart';

class Offerswid extends StatelessWidget {
  Offerswid({super.key});
  List<Gameforyoumodel> imgList = [
    Gameforyoumodel(
        imageurl:
            "https://img.freepik.com/free-photo/view-3d-video-game-controller_23-2151005775.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        maintitle:
            "Easy &Fun PAW Patrol kids game-preschool & Toddler children....",
        caption: "new update available.update available",
        subimg:
            "https://img.freepik.com/free-vector/video-game-elements-collection_23-2150269111.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        subcaption: "Paw patro.. ",
        subcap: "Badge  ",
        star: "3.5 "),
    Gameforyoumodel(
        imageurl:
            "https://st3.depositphotos.com/13194036/37187/i/450/depositphotos_371874436-stock-photo-kyiv-ukraine-june-2019-professional.jpg",
        maintitle: "FOOTBALL GAME",
        caption: "New update avail",
        subimg:
            "https://img.freepik.com/free-vector/video-game-elements-collection_23-2150269111.jpg?size=626&ext=jpg&ga=GA1.1.1340534115.1711087383&semt=ais",
        subcaption: "Raw petro...",
        subcap: "game",
        star: "4.5")
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
                                        color:
                                            Color.fromARGB(255, 142, 134, 134),
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
                                leading: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              item.subimg,
                                            ),
                                            fit: BoxFit.fill))),
                                title: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.subcaption,
                                            style:
                                                const TextStyle(fontSize: 10),
                                          ),
                                          Text(item.subcap,
                                              style: const TextStyle(
                                                  fontSize: 10)),
                                          Text(item.star,
                                              style:
                                                  const TextStyle(fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("install"),

                                  // title: Text(item.subcaption)

                                  //   title: Center(child: Text(item.maintitle)),
                                ),
                              ))
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
