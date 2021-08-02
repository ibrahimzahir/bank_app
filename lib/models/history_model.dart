class HistoryModel {
  String name;
  String photo;
  String date;
  String amount;

  HistoryModel(
    this.name,
    this.photo,
    this.date,
    this.amount,
  );
}

List<HistoryModel> history = historyData
    .map((item) =>
        HistoryModel(item['name'], item['photo'], item['date'], item['amount']))
    .toList();

var historyData = [
  {
    "name": "Shein",
    "photo": "assets/images/Shein-logo.jpeg",
    "date": "01st Apr 2020",
    "amount": "-\$351.00"
  },
  {
    "name": "Revolve",
    "photo": "assets/images/Revolve-logo.png",
    "date": "11th Apr 2020",
    "amount": "-\$73.24"
  },
  {
    "name": "Note",
    "photo": "assets/images/note-logo.png",
    "date": "12th Apr 2020",
    "amount": "-\$135.99"
  },
  {
    "name": "Giorgio-Armani",
    "photo": "assets/images/Giorgio-Armani.png",
    "date": "14th Apr 2020",
    "amount": "-\$375.99"
  },
];
