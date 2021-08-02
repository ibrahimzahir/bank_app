import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/color_styles.dart';
import '../models/history_model.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 20),
          child: Text(
            'History',
            style: GoogleFonts.inter(
                fontSize: 18, fontWeight: FontWeight.w700, color: blackColor),
          ),
        ),
        ListView.builder(
          itemCount: 2,
          padding: EdgeInsets.only(left: 16, right: 16),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: 76,
              width: 50,
              margin: EdgeInsets.only(bottom: 13),
              padding:
                  EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 25.0,
                    spreadRadius: 5.0,
                    offset: Offset(
                      15.0,
                      15.0,
                    ),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              history[index].photo,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            history[index].name,
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            history[index].date,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: pinkColor,
                            ),
                            child: Text(
                              history[index].amount,
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: blueColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
