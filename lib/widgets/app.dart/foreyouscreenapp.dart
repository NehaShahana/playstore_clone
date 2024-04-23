import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playstore_application/models/appforeyuo.dart';
import 'package:playstore_application/models/appforeyuo.dart';

class foreapp extends StatelessWidget {
  foreapp({super.key});

  List<App> apps = [
    App(
      image:
          "https://play-lh.googleusercontent.com/01KJYHefo1hmyWDVUZPPpdWhlnFp-rUpV9WJkbUVyJ7F1pE3XoPwZgxkXgWqd0TTBus=s256-rw",
      name: "Botim-video call",
      rating: "4.1 ★",
    ),
    App(
      image:
          "https://play-lh.googleusercontent.com/BmUViDVOKNJe0GYJe22hsr7juFndRVbvr1fGmHGXqHfJjNAXjd26bfuGRQpVrpJ6YbA=s512-rw",
      name: "Tiktok",
      rating: "4.0 ★",
    ),
    App(
      image:
          "https://play-lh.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo=s512-rw",
      name: "Snapchat",
      rating: "4.1 ★",
    ),
    App(
      image:
          "https://play-lh.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q=s512-rw",
      name: "Telegram",
      rating: "4.0 ★",
    ),
    App(
      image:
          "https://play-lh.googleusercontent.com/IihPs4IZsflvpscJVS14-ySG-BJH2B97Fv1nCEsr0e8YZXFxTiTSTesHz3UAF-bcaCvs=s512-rw",
      name: "crime-mobile",
      rating: "4.1 ★",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                height: 200,
                width: 120,
                child: Column(children: [
                  Image.network(
                    apps[index].image,
                    height: 100,
                    width: 100,
                  ),
                  Text(apps[index].name),
                  Text(apps[index].rating)
                ]));
          },
          itemCount: apps.length,
        ),
      ),
    ));
  }
}
