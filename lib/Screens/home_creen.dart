import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/TransactionsCard.dart';
import '../models/card_model.dart';
import '../constants/color_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.menu_outlined,
                    color: Colors.grey,
                    size: 24.0,
                    semanticLabel: 'Drawer',
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('assets/images/person.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning,',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                ),
                Text(
                  ' Maeesha',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16, right: 8),
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 220,
                  width: 350,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(cards[index].cardBackground),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/bml_logo.jpeg'),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  left: 8,
                                ),
                                child: Text(
                                  cards[index].cardType,
                                  style: GoogleFonts.inconsolata(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 80,
                        child: Text(
                          cards[index].cardNumber,
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                            letterSpacing: 3.0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 130,
                        child: Text(
                          'VALID',
                          style: GoogleFonts.inconsolata(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 140,
                        child: Text(
                          'THRU',
                          style: GoogleFonts.inconsolata(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 148,
                        top: 127,
                        child: Text(
                          cards[index].cardExpired,
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 180,
                        child: Text(
                          cards[index].user,
                          style: GoogleFonts.inconsolata(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240,
                        top: 165,
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(cards[index].cardElementBottom),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(fontSize: 15, color: textBlueCOlor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: 120,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return TransactionsCard();
                  })),
        ],
      ),
    );
  }
}
