import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/color_styles.dart';

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
            'Transaction',
            style: GoogleFonts.inter(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.green),
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
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(8.0, 8.0),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 57,
                        width: 57,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //   image: AssetImage(transactions[index].photo),
                          // ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'transactions[index].name',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.green),
                          ),
                          Text(
                            'transactions[index].date',
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Text(
                  //       'transactions[index].amount',
                  //       style: GoogleFonts.inter(
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w700,
                  //           color: Colors.black),
                  //     )
                  //   ],
                  // )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
