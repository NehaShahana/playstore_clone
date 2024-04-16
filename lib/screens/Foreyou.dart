import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Foreyou extends StatefulWidget {
  const Foreyou({super.key});

  @override
  State<Foreyou> createState() => _ForeyouState();
}

class _ForeyouState extends State<Foreyou> {
  List<String> imgList = [
    "https://cdn.pixabay.com/photo/2023/11/30/01/38/vietnam-8420600_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/06/12/19/59/football-3471371_1280.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .map((item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                            child: Image.network(item,
                                fit: BoxFit.cover, width: 1000)),
                      ),
                    ))
                .toList(),
          )),
    );
  }
}
