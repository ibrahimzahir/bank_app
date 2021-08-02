import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/transactions_model.dart';
import '../constants/color_styles.dart';
import '../Screens/home_creen.dart';

class TransactionsCard extends StatefulWidget {
  final String operations;
  final String selectedIcon;
  final String unSelectedIcon;
  final bool isSelected;
  HomeScreen context;

  TransactionsCard(
      {this.operations,
      this.selectedIcon,
      this.unSelectedIcon,
      this.isSelected,
      this.context});

  @override
  _TransactionsCardState createState() => _TransactionsCardState();
}

class _TransactionsCardState extends State<TransactionsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        height: 123,
        width: 123,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: tenBlackColor,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(8.0, 8.0),
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Column(
          children: [
            SvgPicture.asset(widget.isSelected
                ? widget.selectedIcon
                : widget.unSelectedIcon),
            SizedBox(height: 8),
            Text(
              widget.operations,
              textAlign: TextAlign.center,
              style: GoogleFonts.inconsolata(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: blueColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
