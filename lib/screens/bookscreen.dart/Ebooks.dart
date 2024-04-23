import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/models/bookm.dart';

class Ebooks extends StatefulWidget {
  const Ebooks({super.key});

  @override
  State<Ebooks> createState() => _EbooksState();
}

class _EbooksState extends State<Ebooks> {
  List<Bookmodel> books = [
    Bookmodel(
      Bookurl:
          "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSFBB8b4mBjczIfBY9eQX9bv5oCSrztuL06gjnE_Qjj5gNyb1izqofi9iUeYiV8pP2BgWAPGzAy50Mhnmc3s-RCpgoTRTuVY0Fz1TTlvtRb",
      title: "Jhatpat english",
      price: "   ₹8,427",
      ogprice: " ₹8,427",
    ),
    Bookmodel(
        Bookurl:
            "https://therightbookstoreindia.com/wp-content/uploads/2022/02/1643819422.jpg",
        title: "Jhatpat english",
        price: "   ₹8,427",
        ogprice: "₹7,171"),
    Bookmodel(
        Bookurl:
            "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSFBB8b4mBjczIfBY9eQX9bv5oCSrztuL06gjnE_Qjj5gNyb1izqofi9iUeYiV8pP2BgWAPGzAy50Mhnmc3s-RCpgoTRTuVY0Fz1TTlvtRb",
        title: "Jhatpat english",
        price: " ₹8,427",
        ogprice: "₹7,171"),
    Bookmodel(
        Bookurl:
            "https://therightbookstoreindia.com/wp-content/uploads/2022/02/1643819422.jpg",
        title: "Jhatpat english",
        price: "   ₹8,427",
        ogprice: "₹7,171"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 130,
            child: Column(
              children: [
                Image.network(
                  books[index].Bookurl,
                  height: 150,
                  width: 150,
                ),
                Text(books[index].title),
                Row(
                  children: [
                    Text(
                      books[index].price,
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(books[index].ogprice)
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
      ),
    ));
  }
}
