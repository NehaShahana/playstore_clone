import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/models/suggesionmodel.dart';

class sugession extends StatefulWidget {
  const sugession({super.key});

  @override
  State<sugession> createState() => _sugessionState();
}

class _sugessionState extends State<sugession> {
  List<SuggesionModel> list = [
    SuggesionModel(
        logo:
            "https://play-lh.googleusercontent.com/Y9BUoMIWfhZDUFZ_MxQmnsgSyb3O8s8Sds65E_j46-vdDSJi_0Xqmoa-fHaQa7fGlw=s128-rw",
        maintitle: "Candy Crush",
        subtitle: "puzzle .match 3",
        starTitle: "4.6 ★  234 MB",
        logo2:
            "https://play-lh.googleusercontent.com/J_4kcCrgNmQdEcMgWG5_ZX5o5Z3GFnkcapT17K3tDf4WOWJ1C29J0yTqFKcGc2m0gXo=s128-rw",
        maintitle2: "Subway surf",
        subtitle2: "Subway surf .Hunting ",
        startitle2: "4.4 ★  0.93 GB",
        logo3:
            "https://play-lh.googleusercontent.com/WhchKTb7eyHxletDAqOvvgbDxvl-2wMYfBz5YzWgF7XJDl7lUlkchI5GZU0x7dHTjxE=s128-rw",
        maintitl3: "Ludo king",
        subtitle3: "LUDO . GAME . KING",
        startitle3: "4.1 ★  107 MB"),
    SuggesionModel(
        logo:
            "https://play-lh.googleusercontent.com/je9TJ0GI8JxpTAdLjoz3NFLg0nmNpAfqnkFU2Rvpu6UBbugvdw3xZyuBkqPi9JItN_I=s128-rw",
        maintitle: "World cricket championship",
        subtitle: "Sports . Cricket.Casual",
        starTitle: "4.6 ★  234 MB",
        logo2:
            "https://play-lh.googleusercontent.com/D4DUUFQDCsH9NIEa8hjMjQSWdtNhGX1Fd_jT-23ogAb5uMMqttqQDUJcUt4K_u8RYOQ=s128-rw",
        maintitle2: "UNO",
        subtitle2: "Card .Billiards.Casual.offline",
        startitle2: "4.4 ★   0.93 GB",
        logo3:
            "https://play-lh.googleusercontent.com/juGlq8LnkK88hZMm1nT-YM4aY1QRCTrvr16UMq1D2cNgj9LhZ0BJXNFzXyOUzH7bAA=s128-rw",
        maintitl3: "Free fire",
        subtitle3: "Actio . Tactical shooter . Casual",
        startitle3: "4.1 ★  107 MB")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const ListTile(
            leading: Text(
              "Sponsered .",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            title: Text(
              "Suggested for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: false,
              height: 250.0,
              viewportFraction: 1,
            ),
            items: list.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Image.network(i.logo),
                        title: Text(i.maintitle),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(i.subtitle), Text(i.starTitle)],
                        ),
                      ),
                      ListTile(
                        leading: Image.network(i.logo2),
                        title: Text(i.maintitle2),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(i.subtitle2), Text(i.startitle2)],
                        ),
                      ),
                      ListTile(
                        leading: Image.network(i.logo3),
                        title: Text(i.maintitl3),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(i.subtitle3), Text(i.startitle3)],
                        ),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ],
      )),
    );
  }
}
