import 'package:flutter/material.dart';

class TransactionsCard extends StatefulWidget {
  final String operations;
  final String selectedIcon;
  final String unSelectedIcon;
  final bool isSelected;

  TransactionsCard(
      this.operations, this.selectedIcon, this.unSelectedIcon, this.isSelected);

  @override
  _TransactionsCardState createState() => _TransactionsCardState();
}

class _TransactionsCardState extends State<TransactionsCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
