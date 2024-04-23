// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/widgets/offerwid.dart/offerswidget.dart';

class Offergame extends StatelessWidget {
  const Offergame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            const Text(
              "Limited-timeoffer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 3,
            ),
            Container(
              height: 400,
              width: 600,
              decoration: BoxDecoration(
                border: Border.all(width: .5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9Po7xkBYcWEK89tRLTsggicUYzetv7r4mw&s"),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Subway Surfers .tressure hunting",
                    style: TextStyle(fontSize: 13, color: Colors.blue),
                  ),
                  Text(
                    "Save 87% on the Breezers Bandlel, ",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Learn more",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Offers for games you might like",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 320,
              child: Offerswid(),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [
            //     Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Text("data"),
            //     )
            //   ],
            // )
          ])),
    ));
  }
}
