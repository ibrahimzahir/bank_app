import 'package:flutter/material.dart';

class TransactionsModel {
  String name;
  String selectedIcon;
  String unSelectedIcon;

  TransactionsModel(this.name, this.selectedIcon, this.unSelectedIcon);
}

List<TransactionsModel> datas = transactionsData
    .map((item) => TransactionsModel(
        item['name'], item['selectedIcon'], item['unSelectedIcon']))
    .toList();

var transactionsData = [
  {
    "name": "Money\nTransfer",
    "selectedIcon": "assets/svg/account_balance_black_24dp.svg",
    "unSelectedIcon": "assets/svg/account_balance_wallet_black_24dp.svg"
  },
  {
    "name": "Bank\nWithdraw",
    "selectedIcon": "assets/svg/card_travel_black_24dp.svg",
    "unSelectedIcon": "assets/svg/card_travel_black_24dp.svg"
  },
  {
    "name": "Insight\nTracking",
    "selectedIcon": "assets/svg/savings_black_24dp.svg",
    "unSelectedIcon": "assets/svg/insights_black_24dp.svg"
  },
];
